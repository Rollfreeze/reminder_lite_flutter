extension Date {
    var withZeroTime: Date? {
        var calendar = Calendar.current
        calendar.timeZone = .gmt
        let dateComponents = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: dateComponents)
    }
    
    /// Change current date time to the passed one instead.
    ///
    /// Returns the same date if passed date is nil.
    func replaceTimeFrom(_ date: Date?) -> Date {
        guard date != nil else { return self }
        
        var calendar = Calendar.current
        calendar.timeZone = .gmt
        
        let dateComponents = calendar.dateComponents([.year, .month, .day], from: self)
        let timeComponents = calendar.dateComponents([.hour, .minute, .second], from: date!)
        
        var combinedComponents = DateComponents()
        
        combinedComponents.year = dateComponents.year
        combinedComponents.month = dateComponents.month
        combinedComponents.day = dateComponents.day
        
        combinedComponents.hour = timeComponents.hour
        combinedComponents.minute = timeComponents.minute
        combinedComponents.second = timeComponents.second
        
        return calendar.date(from: combinedComponents)!
    }
}
