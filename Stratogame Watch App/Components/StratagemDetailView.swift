import SwiftUI

struct StratDetailView: View {
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
                Button("Play") { isPlaying = true }
            }
        }
        .sheet(isPresented: $isPlaying) {
            Text("here supposed to be a swipe game with stratagemes")
        }
    }
}

#Preview {
    NavigationStack {
        StratDetailView(stratagem: stratagems[0].list[0])
    }
}
