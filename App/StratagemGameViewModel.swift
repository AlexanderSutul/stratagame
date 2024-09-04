import SwiftUI

protocol StratagemUserDefaults {
    static func setNewBestTime(_ key: String, seconds: Double)
    static func getBestTime(by key: String) -> Double
}

class StratagemGameViewModel: ObservableObject {
    init(stratagem: Stratagem) {
        self.stratagem = stratagem
        stratagemStatuses = stratagem.sequences.map { s in StratagemSeqCellStatus(seq: s, status: nil) }

        bestSeconds = ResultsManager.getBestTime(by: stratagem.title)
    }

    var stratagem: Stratagem

    let threshold: CGFloat = 50.0

    @Published var isGameActive = false
    @Published var seconds = 0.0
    @Published var missedSwipesCounter = 0
    @Published var timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    @Published var currentIndex = 0
    @Published var stratagemStatuses: [StratagemSeqCellStatus]
    @Published var swipeOffset: CGSize = .zero

    @Published var bestSeconds: Double

    func resetGame() {
        stopGame()
        resetStatuses()

        seconds = 0
        currentIndex = 0
    }

    func stopGame() {
        isGameActive = false
        timer.upstream.connect().cancel()
    }

    func startGame() {
        isGameActive = true
        timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
        currentIndex = 0
        stratagemStatuses = getStratagemsWithNilStatuses()
        seconds = 0
    }

    func isFullSuccess() -> Bool {
        return stratagemStatuses.allSatisfy { $0.status == true }
    }

    private func getStratagemsWithNilStatuses() -> [StratagemSeqCellStatus] {
        return stratagemStatuses.map { s in StratagemSeqCellStatus(seq: s.seq, status: nil) }
    }

    func resetStatuses() {
        stratagemStatuses = getStratagemsWithNilStatuses()
    }

    func onChangeGesture(value: DragGesture.Value) {
        swipeOffset = value.translation
    }

    func onEndedGesture(value: DragGesture.Value) {
        var seq: StratagemSeq?

        if abs(value.translation.width) > abs(value.translation.height) {
            if value.translation.width > threshold {
                seq = .right
            } else if value.translation.width < -threshold {
                seq = .left
            }
        } else {
            if value.translation.height > threshold {
                seq = .down
            } else if value.translation.height < -threshold {
                seq = .up
            }
        }

        if let seq = seq {
            if !isGameActive { startGame() }

            let currentSeq = stratagemStatuses[currentIndex].seq
            stratagemStatuses[currentIndex].status = seq == currentSeq
            currentIndex += 1

            if currentIndex == stratagemStatuses.count {
                stopGame()
            }
        }

        if isFullSuccess() {
            ResultsManager.setNewBestTime(stratagem.title, seconds: seconds)
            bestSeconds = ResultsManager.getBestTime(by: stratagem.title)
        }

        swipeOffset = .zero
    }
}
