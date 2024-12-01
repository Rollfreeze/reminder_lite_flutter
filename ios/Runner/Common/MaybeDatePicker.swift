import SwiftUI

struct MaybeDatePicker: View {
    let onActiveDatePressed: () -> Void
    @Binding var isDatePickerActive: Bool
    @Binding var showDatePicker: Bool
    @Binding var selectedDates: Set<DateComponents>
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                imageName: "calendar",
                bgColor: Color.red,
                title: "Date",
                subTitle: formatDateIfSelected(),
                onActivePressed: onActiveDatePressed,
                isToggleOn: $isDatePickerActive
            )
            
            if showDatePicker {                
                MultiDatePicker("Date", selection: $selectedDates)
                    .padding(.horizontal)
            }
        }
    }
    
    private func formatDateIfSelected() -> String? {
        guard let selectedDateComponents = selectedDates.first,
              let selectedDate = Calendar.current.date(from: selectedDateComponents) else {
            return nil
        }
        
        let calendar = Calendar.current
        let today = calendar.startOfDay(for: Date())
        let tomorrow = calendar.date(byAdding: .day, value: 1, to: today)!
        let yesterday = calendar.date(byAdding: .day, value: -1, to: today)!
        
        if calendar.isDate(selectedDate, inSameDayAs: today) {
            return "Today"
        } else if calendar.isDate(selectedDate, inSameDayAs: tomorrow) {
            return "Tomorrow"
        } else if calendar.isDate(selectedDate, inSameDayAs: yesterday) {
            return "Yesterday"
        } else {
            let formatter = DateFormatter()
            formatter.dateStyle = .full // Gives the format like "Friday, 29 November 2024"
            return formatter.string(from: selectedDate)
        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
