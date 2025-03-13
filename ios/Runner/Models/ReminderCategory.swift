enum ReminderCategory: Int, CaseIterable {
    case today = 0
    case month = 1
    case all = 2
    case completed = 3
    
    /// Create `ReminderCategory` instance from a code.
    static func from(code: Int) throws -> ReminderCategory {
        guard let category = Self.allCases.first(where: { $0.rawValue == code }) else {
            throw NSError(
                domain: "RepeatOption",
                code: 404,
                userInfo: [NSLocalizedDescriptionKey: "No such code in options: \(code)"]
            )
        }
        return category
    }
}
