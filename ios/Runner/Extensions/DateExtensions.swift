extension Date {
    func toUTCString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        return dateFormatter.string(from: self)
    }
    
    /// Merges a given date with an optional time and returns the result.
    static func mergeDateAndTime(date: Date?, time: Date?) -> Date? {
        guard let date = date else { return nil }
        
        let calendar = Calendar.current
        var dateComponents = calendar.dateComponents([.year, .month, .day], from: date)
        
        if let time = time {
            let timeComponents = calendar.dateComponents([.hour, .minute, .second], from: time)
            dateComponents.hour = timeComponents.hour
            dateComponents.minute = timeComponents.minute
            dateComponents.second = timeComponents.second
        } else {
            dateComponents.hour = 0
            dateComponents.minute = 0
            dateComponents.second = 0
        }
        
        return calendar.date(from: dateComponents)
    }

    /// Checking if current date is today.
    ///
    /// Compatible with SwiftModel's `#Predicate`.
    var isToday: Bool {
        let startOfDay = Calendar.current.startOfDay(for: Date())
        let endOfDay = Calendar.current.date(byAdding: .day, value: 1, to: startOfDay)!
        return startOfDay <= self && self < endOfDay
    }
    
    /// Checking if current date is current month.
    ///
    /// Compatible with SwiftModel's `#Predicate`.
    var isCurrentMonth: Bool {
        let calendar = Calendar.current
        let today = Date()
        let startOfMonth = calendar.date(from: calendar.dateComponents([.year, .month], from: today))!
        let startOfNextMonth = calendar.date(byAdding: .month, value: 1, to: startOfMonth)!
        return startOfMonth <= self && self < startOfNextMonth
    }
}
