import SwiftUI

struct NewReminderPresets: View {
    @Binding var selectedDates: Set<DateComponents>
    @Binding var selectedTime: Date
    @Binding var showDatePicker: Bool
    @Binding var showTimePicker: Bool
    
    var body: some View {
        VStack {
            MaybeDatePicker(
                showDatePicker: $showDatePicker,
                selectedDates: $selectedDates
            )
            Divider()
            MaybeTimePicker(
                showTimePicker: $showTimePicker,
                selectedTime: $selectedTime
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
