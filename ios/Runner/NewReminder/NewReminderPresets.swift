import SwiftUI

struct NewReminderPresets: View {
    @State private var selectedDates: Set<DateComponents> = []
    @State var selectedTime: Date = Date(timeIntervalSinceNow: 0)
    
    var body: some View {
        VStack {
            MaybeDatePicker(selectedDates: $selectedDates)
            Divider()
            MaybeTimePicker(selectedTime: $selectedTime)
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
