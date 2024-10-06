import SwiftUI

struct StratagemListView: View {
    var stratagemSections: [StratagemSection]

    var body: some View {
        List {
            ForEach(stratagemSections) { section in
                Section(header: Text(section.type.rawValue)) {
                    ForEach(section.list, id: \.id) { strat in
                        NavigationLink(destination: StratagemGameView(stratagem: strat)) {
                            StratagemCellView(strat: strat)
                        }
                    }
                }
            }
            ResetAllResults(onTap: { ResultsManager.resetAllResults() })
        }
    }
}

#Preview {
    NavigationStack {
        StratagemListView(stratagemSections: stratagems)
    }
}
