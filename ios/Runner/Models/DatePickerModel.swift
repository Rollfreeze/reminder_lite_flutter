class DatePickerModel: ObservableObject {
    @Published var selectedDates: Set<DateComponents> = []
    @Published var isDatePickerActive: Bool = false
    @Published var showDatePicker: Bool = false
    
    public func show() -> Void {
        showDatePicker = true
    }
    
    public func formatDateIfSelected() -> String? {
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
