import Foundation
import SwiftData

/// A model that represents and contains all about some certain reminder.
@Model
class Reminder: Identifiable {
    @Attribute(.unique) var id: UUID
    var title: String
    var notes: String
    var due: Date?
    var createdAt: Date
    var repeatanceCode: Int
    var isCompleted: Bool
    
    init(id: UUID? = nil, title: String, notes: String, dueDate: Date?, dueTime: Date?, createdAt: Date = Date.now, repeatance: RepeatanceOption, isCompleted: Bool = false) {
        self.id = id ?? UUID()
        self.title = title
        self.notes = notes
        self.due = Date.mergeDateAndTime(date: dueDate, time: dueTime)
        self.createdAt = createdAt
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

        let dueTimeStamp = dictionary["due"] as? Double
        let due: Date? = dueTimeStamp == nil ? nil : Date(timeIntervalSince1970: TimeInterval(dueTimeStamp!))
        
        self.init(id: uuid, title: title, notes: notes, dueDate: due, dueTime: due, repeatance: RepeatanceOption(rawValue: repeatanceCode)!, isCompleted: isCompleted)
    }
    
    /// Update fields from another Reminder instance.
     func update(from newReminder: Reminder) -> Void {
         self.title = newReminder.title
         self.notes = newReminder.notes
         self.due = newReminder.due
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
        if let due = due { map["due"] = due.timeIntervalSince1970 }

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
