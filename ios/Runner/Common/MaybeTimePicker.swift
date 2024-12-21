import SwiftUI

struct MaybeTimePicker: View {
    let onToggleChange: (_ value: Bool) -> Void
    let onActivePressed: () -> Void
    @EnvironmentObject var timePicker: TimePickerModel
    
    var body: some View {
        VStack {
            ListTileSwitcher(
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
                    "TimePicker",
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
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
