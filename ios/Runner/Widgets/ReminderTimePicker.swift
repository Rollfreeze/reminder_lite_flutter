import SwiftUI

/// Time picker presset for a new reminder view.
struct ReminderTimePicker: View {
    let onToggleChange: (_ value: Bool) -> Void
    let onActivePressed: () -> Void
    @EnvironmentObject var timePicker: TimePickerModel
    
    var body: some View {
        VStack {
            ListTileToggle(
                imageName: "clock.fill",
                bgColor: Color.blue,
                title: "Time",
                subTitle: timePicker.formatTimeIfSelected(),
                onActivePressed: onActivePressed,
                onToggleChange: onToggleChange,
                isToggleOn: $timePicker.isTimePickerActive
            )
            
            if timePicker.showTimePicker {
                Divider()
                    .padding(.leading, 55)
                    .offset(y: -3)
                DatePicker(
                    "",
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
