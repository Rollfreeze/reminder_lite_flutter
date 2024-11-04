import SwiftUI

struct NewReminderSheetView: View {
    let onCancel: () -> Void
    
    var body: some View {
        VStack {
            NewReminderAppBar(onCancel: onCancel, onAdd: onCancel)
            NewReminderForm()
            Spacer()
        }
        .background(Color.gray.opacity(0.1))
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
