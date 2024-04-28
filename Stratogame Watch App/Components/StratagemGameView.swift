import SwiftUI

struct StratagemSeqCellStatus: Hashable {
    var seq: StratagemSeq
    var status: Bool?
}

struct StratagemGameView: View {
    @StateObject var vm: StratagemGameViewModel

    init(stratagem: Stratagem) {
        _vm = StateObject(wrappedValue: StratagemGameViewModel(stratagem: stratagem))
    }

    var body: some View {
        VStack(spacing: 12) {
            Text(vm.stratagem.title)
            HStack {
                ForEach(vm.stratagemStatuses, id: \.self) { stat in
                    Image(systemName: "arrow.\(stat.seq.rawValue).square")
                        .foregroundStyle(getSeqColor(status: stat.status))
                }
            }
            HStack { Spacer() }
                .overlay(content: {
                    VStack {
                        if vm.seconds > 0 {
                            Text("\(String(format: "%.2f", vm.seconds))s")
                                .onTapGesture { vm.resetGame() }
                        }
                        if vm.bestSeconds > 0 {
                            Text("Best time:\(String(format: "%.2f", vm.bestSeconds))s")
                        }
                    }
                })
                .frame(height: 100)
                .background(getSwipableAreaColor())
                .gesture(DragGesture(minimumDistance: 25, coordinateSpace: .local)
                    .onChanged { value in vm.onChangeGesture(value: value) }
                    .onEnded { value in vm.onEndedGesture(value: value) }
                )
        }
        .onReceive(vm.timer) { _ in
            if vm.isGameActive {
                vm.seconds += 0.01
            }
        }
    }

    func getSeqColor(status: Bool?) -> Color {
        if let status = status {
            return status ? .green : .red
        }
        return .gray
    }

    func getSwipableAreaColor() -> Color {
        if vm.currentIndex == vm.stratagemStatuses.count {
            return vm.isFullSuccess() ? .green : .red
        }
        return .gray
    }
}

#Preview {
    StratagemGameView(stratagem: stratagems.first!.list.first!)
}
