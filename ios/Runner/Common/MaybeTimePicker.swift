import SwiftUI

struct MaybeTimePicker: View {
    @EnvironmentObject var timePicker: TimePickerModel
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                imageName: "clock.fill",
                bgColor: Color.blue,
                title: "Time",
                subTitle: timePicker.formatTimeIfSelected(),
                onActivePressed: timePicker.show,
                isToggleOn: $timePicker.isTimePickerActive
            )
            
            if timePicker.showTimePicker {
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
