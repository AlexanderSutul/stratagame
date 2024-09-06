import SwiftUI

struct StratagemCellView: View {
    var strat: Stratagem

    var body: some View {
        HStack(spacing: 12) {
            Image("\(strat.id)")
                .resizable()
                .frame(width: 44, height: 44)
                .background(.black)
            VStack(alignment: .leading) {
                Text("\(strat.title)")
                let bestTime = ResultsManager.getBestTime(by: strat.title)
                if bestTime > 0 {
                    Text("\(String(format: "%.2f", bestTime))s")
                }
            }
        }
    }
}

#Preview {
    StratagemCellView(strat: stratagems.first!.list.first!)
}
