import SwiftUI

struct BottomSheetAppBar: ToolbarContent {
    let onCancel: () -> Void
    let onAdd: () -> Void
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
            Button("Add", action: onAdd)
                .disabled(!isConfirmActive)
        }
    }
}
