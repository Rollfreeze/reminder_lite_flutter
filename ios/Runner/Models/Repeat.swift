/// Reminder repeat options
enum RepeatOption: String, CaseIterable {
    case never = "Never"
    case daily = "Daily"
    case weekdays = "Weekdays"
    case weekends = "Weekends"
    case weekly = "Weekly"
    case every2Weeks = "Every 2 Weeks"
    case fortnightly = "Fortnightly"
    case monthly = "Monthly"
    case every3Months = "Every 3 Months"
    case every6Months = "Every 6 Months"
    case yearly = "Yearly"

    /// Create `RepeatOption` instance from a string.
    static func from(name: String) throws -> RepeatOption {
        guard let option = Self.allCases.first(where: { $0.rawValue == name }) else {
            throw NSError(domain: "RepeatOption", code: 404, userInfo: [NSLocalizedDescriptionKey: "No such value in options: \(name)"])
        }
        return option
    }
}
