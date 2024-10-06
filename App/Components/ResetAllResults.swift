import SwiftUI

struct ResetAllResults: View {
    var onTap: () -> Void

    @State private var isDeleting = false

    var body: some View {
        Button("Remove All Results", role: .destructive) { isDeleting.toggle() }
            .alert("Your progress will be removed?",
                   isPresented: $isDeleting,
                   actions: {
                       Button("Remove", role: .destructive) { onTap() }
                       Button("Cancel", role: .cancel) { isDeleting.toggle() }
                   })
    }
}

#Preview {
    ResetAllResults(onTap: {})
}
