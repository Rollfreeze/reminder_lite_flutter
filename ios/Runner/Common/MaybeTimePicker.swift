import SwiftUI

struct MaybeTimePicker: View {
    @Binding var showTimePicker: Bool
    @Binding var selectedTime: Date
    @Binding var selectedTimeFormated: String
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                imageName: "clock.fill",
                bgColor: Color.blue,
                title: "Time",
                subTitle: $selectedTimeFormated,
                isToggleOn: $showTimePicker
            )
            
            if showTimePicker {
                Divider()
                    .padding(.leading, 58)
                
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
