import Foundation
import SwiftData

/// A model that represents and contains all about some certain reminder.
@Model
class Reminder: Identifiable {
    @Attribute(.unique) var id: String
    var title: String
    var notes: String
    var date: Date?
    var repeatanceCode: Int
    var isDone: Bool
    
    /// A new reminder.
    init(title: String, notes: String, date: Date?, time: Date?, repeatance: RepeatanceOption) {
        self.id = UUID().uuidString
        self.title = title
        self.notes = notes
        self.date = date?.replaceTimeFrom(time)
        self.repeatanceCode = repeatance.rawValue
        self.isDone = false
    }
    
    /// Get map representation of Reminder.
    private func toMap() -> [String: Any] {
        var map: [String: Any] = [
            "repeatance_code": repeatanceCode,
            "is_done": isDone
        ]
        
        if !id.isEmpty { map["id"] = id }
        if !title.isEmpty { map["title"] = title }
        if !notes.isEmpty { map["notes"] = notes }
        if let date = date { map["date"] = date.timeIntervalSince1970 }

        return map
    }
    
    /// Get json representation of Reminder.
    public func toJson() -> String? {
        if let json = try? JSONSerialization.data(withJSONObject: toMap(), options: []) {
            return String(data: json, encoding: .utf8)
        }
        return nil
    }
    
    static public func jsonFromList(_ reminders: [Reminder]) -> String? {
        let jsonData: [String: Any] = [
            "reminders": reminders.map { $0.toMap() }
        ]
        
        if let json = try? JSONSerialization.data(withJSONObject: jsonData, options: []) {
            return String(data: json, encoding: .utf8)
        }
        
        return nil
    }
}
