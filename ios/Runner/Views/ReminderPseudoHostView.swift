import SwiftUI

/// This is a test view for checking native bottom sheet opening and closing.
struct ReminderPseudoHostView: View {
    @State private var isPresented: Bool = false
    
    private func isPresentedToggle() { isPresented.toggle() }
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Button("Open Sheet", action: isPresentedToggle)
            Spacer()
            HStack {
                Spacer()
            }
        }
        .background(Color.black)
        .sheet(
            isPresented: $isPresented,
            content: {
                ReminderView(
                    onCancel: isPresentedToggle,
                    onConfirm: { reminder in }
                )
            }
        )
    }
}

#Preview {
    ReminderPseudoHostView()
}
