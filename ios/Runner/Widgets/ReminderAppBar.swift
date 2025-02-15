import SwiftUI

/// Toolbar for Reminder View with sheet actions: cancel and creating.
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
