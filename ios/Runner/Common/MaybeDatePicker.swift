import SwiftUI

struct MaybeDatePicker: View {
    let onToggleChange: (_ value: Bool) -> Void
    let onActivePressed: () -> Void
    @EnvironmentObject var datePicker: DatePickerModel
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                imageName: "calendar",
                bgColor: Color.red,
                title: "Date",
                subTitle: datePicker.formatDateIfSelected(),
                onActivePressed: onActivePressed,
                onToggleChange: onToggleChange,
                isToggleOn: $datePicker.isDatePickerActive
            )
            
            if datePicker.showDatePicker {
                DatePicker("Select Date", selection: $datePicker.selectedDate, displayedComponents: [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
