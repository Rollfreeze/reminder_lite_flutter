import SwiftUI

struct NewReminderPresets: View {
    @Binding var selectedDates: Set<DateComponents>
    @Binding var selectedTime: Date
    @Binding var showDatePicker: Bool
    @Binding var showTimePicker: Bool
    @Binding var selectedDateFormated: String
    @Binding var selectedTimeFormated: String
    
    var body: some View {
        VStack {
            MaybeDatePicker(
                showDatePicker: $showDatePicker,
                selectedDates: $selectedDates,
                selectedDateFormated: $selectedDateFormated
            )
            Divider()
                .padding(.leading, $showDatePicker.wrappedValue ? 16 : 58)
            MaybeTimePicker(
                showTimePicker: $showTimePicker,
                selectedTime: $selectedTime,
                selectedTimeFormated: $selectedTimeFormated
            )
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
