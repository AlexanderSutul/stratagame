import SwiftUI

struct StratagemListView: View {
    var stratagemSections: [StratagemSection]

    var body: some View {
        List(stratagemSections, id: \.id) { section in
            Section(header: Text(section.type.rawValue)) {
                ForEach(section.list) { strat in
                    NavigationLink(destination: StratagemDetailView(stratagem: strat)) {
                        StratagemCellView(strat: strat)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        StratagemListView(stratagemSections: stratagems)
    }
}
