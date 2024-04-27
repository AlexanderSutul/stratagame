import SwiftUI

struct StratagemCellView: View {
    var strat: Stratagem

    var body: some View {
        HStack(spacing: 12) {
            Image(strat.image)
                .resizable()
                .frame(width: 44, height: 44)
            Text("\(strat.title)")
        }
    }
}

#Preview {
    StratagemCellView(strat: stratagems.first!.list.last!)
}
