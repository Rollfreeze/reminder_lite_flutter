extension Date {
    var withZeroTime: Date? {
        var calendar = Calendar.current
        calendar.timeZone = .gmt
        let dateComponents = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: dateComponents)
    }
    
    var withTimeOnly: Date? {
        var calendar = Calendar.current
        calendar.timeZone = .gmt
        let dateComponents = calendar.dateComponents([.hour, .minute, .second], from: self)
        return calendar.date(from: dateComponents)
    }
}
