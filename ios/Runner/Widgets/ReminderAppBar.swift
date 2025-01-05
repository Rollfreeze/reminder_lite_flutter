import SwiftUI

struct ReminderAppBar: ToolbarContent {
    let onCancel: () -> Void
    let onConfirm: () -> Void
    let isConfirmActive: Bool
    
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Button("Cancel", action: onCancel)
        }
        ToolbarItem(placement: .principal) {
            Text("New Reminder")
                .font(.headline)
        }
        ToolbarItem(placement: .confirmationAction) {
            Button("Add", action: onConfirm)
                .disabled(!isConfirmActive)
        }
    }
}
