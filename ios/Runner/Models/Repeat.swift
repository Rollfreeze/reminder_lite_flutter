import SwiftUI

/// Reminder repeat option.
enum RepeatanceOption: Int, CaseIterable {
    case never = 0
    case daily = 1
    case weekdays = 2
    case weekends = 3
    case weekly = 4
    case fortnightly = 5
    case monthly = 6
    case every3Months = 7
    case every6Months = 8
    case yearly = 9
    
    /// Create `RepeatOption` instance from a string.
    static func from(code: Int) throws -> RepeatanceOption {
        guard let option = Self.allCases.first(where: { $0.rawValue == code }) else {
            throw NSError(
                domain: "RepeatOption",
                code: 404,
                userInfo: [NSLocalizedDescriptionKey: "No such code in options: \(code)"]
            )
        }
        return option
    }
    
    private func localizedStringKey() -> String {
        switch self {
        case .never:
            return "Never"
        case .daily:
            return "Daily"
        case .weekdays:
            return "Weekdays"
        case .weekends:
            return "Weekends"
        case .weekly:
            return "Weekly"
        case .fortnightly:
            return "Fortnightly"
        case .monthly:
            return "Monthly"
        case .every3Months:
            return "Every 3 Months"
        case .every6Months:
            return "Every 6 Months"
        case .yearly:
            return "Yearly"
        }
    }
    
    /// Returns localized string from selected enum value.
    func localizedString() -> LocalizedStringKey {
        return LocalizedStringKey(localizedStringKey())
    }
}
