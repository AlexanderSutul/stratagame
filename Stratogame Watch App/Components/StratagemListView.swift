import SwiftUI

struct StratagemListView: View {
    var stratagemSections: [StratagemSection]

    var body: some View {
        List {
            ForEach(stratagemSections) { section in
                Section(header: Text(section.type.rawValue)) {
                    ForEach(section.list) { strat in
                        NavigationLink(destination: StratagemGameView(stratagem: strat)) {
                            StratagemCellView(strat: strat)
                        }
                    }
                }
            }
            Button("Remove all results") { ResultsManager.resetAllResults() }
        }
    }
}

#Preview {
    NavigationStack {
        StratagemListView(stratagemSections: stratagems)
    }
}
