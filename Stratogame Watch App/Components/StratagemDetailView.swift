import SwiftUI

struct StratagemDetailView: View {
    @State var isPlaying = false

    var stratagem: Stratagem

    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                Image(stratagem.image)
                    .resizable()
                    .frame(width: 50, height: 50)
                Text(stratagem.title)
                Text(stratagem.description)
                    .multilineTextAlignment(.center)
            }
            .padding()
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                if !stratagem.sequences.isEmpty {
                    Button("Play") { isPlaying = true }
                }
            }
        }
        .sheet(isPresented: $isPlaying) {
            StratagemGameView(stratagem: stratagem)
        }
    }
}

#Preview {
    NavigationStack {
        StratagemDetailView(stratagem: stratagems[0].list[0])
    }
}
