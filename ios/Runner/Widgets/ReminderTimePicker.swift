import SwiftUI

/// Time picker presset for a new reminder view.
struct ReminderTimePicker: View {
    let onToggleChange: (_ value: Bool) -> Void
    let onActivePressed: () -> Void
    @ObservedObject var timePicker: TimePickerViewModel
    
    var body: some View {
        List {
            ToggleButton(
                icon: "clock.fill",
                iconColor: Color.blue,
                title: "Time",
                subtitle: timePicker.formatTimeIfSelected(),
                onActivePressed: onActivePressed,
                onToggleChange: onToggleChange,
                isToggleOn: $timePicker.isTimePickerActive
            )
            
            if timePicker.showTimePicker {
                DatePicker(
                    "Due time",
                    selection: $timePicker.selectedTime,
                    displayedComponents: .hourAndMinute
                )
                .datePickerStyle(WheelDatePickerStyle())
                .labelsHidden()
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
