import SwiftUI

struct NewReminderPresets: View {
    @State private var selectedDates: Set<DateComponents> = []
    
    var body: some View {
        VStack {
            MaybeDatePicker(selectedDates: $selectedDates)
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
