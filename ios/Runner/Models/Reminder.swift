import Foundation
import SwiftData

/// A model that represents and contains all about some certain reminder.
@Model
class Reminder: Identifiable {
    @Attribute(.unique) var id: UUID
    var title: String
    var notes: String
    var date: Date?
    var repeatanceCode: Int
    var isCompleted: Bool
    
    /// A new reminder.
    init(id: UUID? = nil, title: String, notes: String, date: Date?, time: Date?, repeatance: RepeatanceOption, isCompleted: Bool = false) {
        self.id = id ?? UUID()
        self.title = title
        self.notes = notes
        self.date = Date.mergeDateAndTime(date: date, time: time)
        self.repeatanceCode = repeatance.rawValue
        self.isCompleted = isCompleted
    }
    
    convenience init?(from dictionary: [String: Any]) {
        guard let idString = dictionary["id"] as? String,
              let uuid = UUID(uuidString: idString),
              let title = dictionary["title"] as? String,
              let notes = dictionary["notes"] as? String,
              let repeatanceCode = dictionary["repeatance_code"] as? Int,
              let isCompleted = dictionary["is_completed"] as? Bool else {
            return nil
        }

        let timeStamp = dictionary["date"] as? Double
        let date: Date? = timeStamp == nil ? nil : Date(timeIntervalSince1970: TimeInterval(timeStamp!))
        
        self.init(id: uuid, title: title, notes: notes, date: date, time: date, repeatance: RepeatanceOption(rawValue: repeatanceCode)!, isCompleted: isCompleted)
    }
    
    /// Update fields from another Reminder instance.
     func update(from newReminder: Reminder) -> Void {
         self.title = newReminder.title
         self.notes = newReminder.notes
         self.date = newReminder.date
         self.repeatanceCode = newReminder.repeatanceCode
         self.isCompleted = newReminder.isCompleted
     }
    
    /// Get map representation of Reminder.
    private func toMap() -> [String: Any] {
        var map: [String: Any] = [
            "repeatance_code": repeatanceCode,
            "is_completed": isCompleted
        ]
        
        map["id"] = id.uuidString
        map["title"] = title
        map["notes"] = notes
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
