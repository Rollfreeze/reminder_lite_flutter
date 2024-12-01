import SwiftUI

struct MaybeTimePicker: View {
    let onActiveTimePressed: () -> Void
    @Binding var isTimePickerActive: Bool
    @Binding var showTimePicker: Bool
    @Binding var selectedTime: Date
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                imageName: "clock.fill",
                bgColor: Color.blue,
                title: "Time",
                subTitle: formatTimeIfSelected(),
                onActivePressed: onActiveTimePressed,
                isToggleOn: $isTimePickerActive
            )
            
            if showTimePicker {
                DatePicker(
                    "TimePicker",
                    selection: $selectedTime,
                    displayedComponents: .hourAndMinute
                )
                .datePickerStyle(WheelDatePickerStyle())
                .labelsHidden()
            }
        }
    }
    
    private func formatTimeIfSelected() -> String? {
        if !isTimePickerActive { return nil }
        return $selectedTime.wrappedValue.formatted(.dateTime.hour().minute())
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
