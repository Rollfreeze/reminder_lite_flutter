import SwiftUI

/// Reminder's grouped settings View.
struct ReminderDueSection: View {
    let onToggleDate: (_ value: Bool) -> Void
    let onActiveDatePressed: () -> Void
    let onToggleTime: (_ value: Bool) -> Void
    let onActiveTimePressed: () -> Void
    
    var body: some View {
        Section {
            ReminderDatePicker(
                onToggleChange: onToggleDate,
                onActivePressed: onActiveDatePressed
            )
            ReminderTimePicker(
                onToggleChange: onToggleTime,
                onActivePressed: onActiveTimePressed
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
