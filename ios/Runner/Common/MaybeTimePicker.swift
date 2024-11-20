import SwiftUI

struct MaybeTimePicker: View {
    @Binding var showTimePicker: Bool
    @Binding var selectedTime: Date
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                isToggleOn: $showTimePicker,
                title: "Time",
                imageName: "clock.fill",
                bgColor: Color.blue
            )
            
            if showTimePicker {
                Divider()
                    .padding(.leading, 60)
     
                DatePicker(
                    "DatePicker",
                    selection: $selectedTime,
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
