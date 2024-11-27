import SwiftUI

struct NewReminderPresets: View {
    @Binding var selectedDates: Set<DateComponents>
    @Binding var selectedTime: Date
    @Binding var showDatePicker: Bool
    @Binding var showTimePicker: Bool
    let selectedDateFormated: String
    let selectedTimeFormated: String
    
    var body: some View {
        VStack {
            MaybeDatePicker(
                showDatePicker: $showDatePicker,
                selectedDates: $selectedDates,
                selectedDateFormated: selectedDateFormated
            )
            .background(Color.white)
            .clipShape(.rect(topLeadingRadius: CGFloat(12), topTrailingRadius: CGFloat(12)))
            
            MaybeTimePicker(
                showTimePicker: $showTimePicker,
                selectedTime: $selectedTime,
                selectedTimeFormated: selectedTimeFormated
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
