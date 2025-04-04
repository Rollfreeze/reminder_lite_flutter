import SwiftUI

/// Toolbar for Reminder View with sheet actions: cancel and creating.
struct ReminderAppBar: ToolbarContent {
    @ObservedObject var viewModel: ReminderViewModel
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Button("Cancel", action: viewModel.cancel)
        }
        ToolbarItem(placement: .principal) {
            Text("New Reminder")
                .font(.headline)
        }
        ToolbarItem(placement: .confirmationAction) {
            Button(viewModel.isEditingMode() ? "Done" : "Add", action: viewModel.confirm)
                .disabled(viewModel.title.isEmpty)
        }
    }
}
