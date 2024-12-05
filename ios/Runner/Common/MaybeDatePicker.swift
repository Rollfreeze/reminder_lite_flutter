import SwiftUI

struct MaybeDatePicker: View {
    @EnvironmentObject var datePicker: DatePickerModel
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                imageName: "calendar",
                bgColor: Color.red,
                title: "Date",
                subTitle: datePicker.formatDateIfSelected(),
                onActivePressed: datePicker.show,
                isToggleOn: $datePicker.isDatePickerActive
            )
            
            if datePicker.showDatePicker {
                MultiDatePicker("Date", selection: $datePicker.selectedDates)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
