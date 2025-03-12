import SwiftUI

/// Date picker presset for a new reminder view.
struct ReminderDatePicker: View {
    let onToggleChange: (_ value: Bool) -> Void
    let onActivePressed: () -> Void
    @ObservedObject var datePicker: DatePickerViewModel
    
    var body: some View {
        List {
            ToggleButton(
                icon: "calendar",
                iconColor: Color.red,
                title: "Date",
                subtitle: datePicker.formatDateIfSelected(),
                onActivePressed: onActivePressed,
                onToggleChange: onToggleChange,
                isToggleOn: $datePicker.isDatePickerActive
            )
            
            if datePicker.showDatePicker {
                DatePicker(
                    "Due date",
                    selection: $datePicker.selectedDate,
                    displayedComponents: .date
                )
                .datePickerStyle(GraphicalDatePickerStyle())
            }
        }
    }
}

#Preview {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
}
