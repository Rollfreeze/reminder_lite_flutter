extension Date {
    var withZeroTime: Date? {
        var calendar = Calendar.current
        calendar.timeZone = .gmt
        let dateComponents = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: dateComponents)
    }
}
