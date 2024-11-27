import SwiftUI

struct MaybeDatePicker: View {
    @Binding var isDatePickerActive: Bool
    @Binding var showDatePicker: Bool
    @Binding var selectedDates: Set<DateComponents>
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                imageName: "calendar",
                bgColor: Color.red,
                title: "Date",
                subTitle: "selectedDateFormated",
                isToggleOn: $isDatePickerActive
            )
            
            if showDatePicker {
                Divider()
                    .padding(.leading, 58)
                
                MultiDatePicker("Date", selection: $selectedDates)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
