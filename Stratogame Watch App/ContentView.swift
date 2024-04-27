import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            StratagemListView(stratagemSections: stratagems)
                .navigationTitle("Stratagame")
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
