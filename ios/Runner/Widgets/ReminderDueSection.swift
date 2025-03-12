import SwiftUI

/// Reminder's grouped settings View.
struct ReminderDueSection: View {
    /// View model with state elements.
    @ObservedObject var viewModel: ReminderViewModel
    
    var body: some View {
        Section {
            ReminderDatePicker(
                onToggleChange: viewModel.onToggleDate,
                onActivePressed: viewModel.onActiveDatePressed,
                datePicker: viewModel.datePicker
            )
            ReminderTimePicker(
                onToggleChange: viewModel.onToggleTime,
                onActivePressed: viewModel.onActiveTimePressed,
                timePicker: viewModel.timePicker
            )
        }
    }
}

#Preview {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
}
