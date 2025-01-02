import SwiftUI

/// Date picker presset for a new reminder view.
struct ReminderDatePicker: View {
    let onToggleChange: (_ value: Bool) -> Void
    let onActivePressed: () -> Void
    @EnvironmentObject var datePicker: DatePickerModel
    
    var body: some View {
        VStack {
            ListTileToggle(
                imageName: "calendar",
                bgColor: Color.red,
                title: "Date",
                subTitle: datePicker.formatDateIfSelected(),
                onActivePressed: onActivePressed,
                onToggleChange: onToggleChange,
                isToggleOn: $datePicker.isDatePickerActive
            )
            
            if datePicker.showDatePicker {
                Divider()
                    .padding(.leading, 55)
                    .offset(y: -3)
                DatePicker("Select Date", selection: $datePicker.selectedDate, displayedComponents: [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding(.horizontal)
            }
            
        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    ReminderView(onCancel: nothing)
}
