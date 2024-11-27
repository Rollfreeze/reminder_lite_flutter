import SwiftUI

struct NewReminderPresets: View {
    @Binding var selectedDates: Set<DateComponents>
    @Binding var selectedTime: Date
    @Binding var showDatePicker: Bool
    @Binding var showTimePicker: Bool
    @Binding var isDatePickerActive: Bool
    @Binding var isTimePickerActive: Bool
    
    var body: some View {
        VStack {
            MaybeDatePicker(
                isDatePickerActive: $isDatePickerActive,
                showDatePicker: $showDatePicker,
                selectedDates: $selectedDates
            )
            .background(Color.white)
            .clipShape(.rect(topLeadingRadius: CGFloat(12), topTrailingRadius: CGFloat(12)))
            
            MaybeTimePicker(
                isTimePickerActive: $isTimePickerActive,
                showTimePicker: $showTimePicker,
                selectedTime: $selectedTime
            )
            .background(Color.white)
            .clipShape(.rect(bottomLeadingRadius: CGFloat(12), bottomTrailingRadius: CGFloat(12)))
            .offset(y: -7)
        }
        .padding()
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
