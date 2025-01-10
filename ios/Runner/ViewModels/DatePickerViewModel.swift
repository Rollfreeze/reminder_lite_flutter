/// View Model to control Date presset of Reminder.
class DatePickerViewModel: ObservableObject {
    @Published var selectedDate: Date = Date.now
    @Published var isDatePickerActive: Bool = false
    @Published var showDatePicker: Bool = false
    
    public func getSelectedDate() -> Date? {
        if !isDatePickerActive { return nil }
        return selectedDate.withZeroTime
    }
    
    public func show() -> Void {
        showDatePicker = true
    }
    
    public func hide() -> Void {
        showDatePicker = false
    }
    
    public func reset() -> Void {
        selectedDate = Date.now
        showDatePicker = false
        isDatePickerActive = false
    }
    
    public func setActive() -> Void {
        isDatePickerActive = true
    }
    
    public func setInactive() -> Void {
        isDatePickerActive = false
    }

    public func setDefault() -> Void {
        selectedDate = Date.now
    }
    
    public func formatDateIfSelected() -> String? {
        if !isDatePickerActive { return nil }

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
