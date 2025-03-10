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
        self.date = Date.mergeDateAndTime(date: date, time: time)
        self.repeatanceCode = repeatance.rawValue
        self.isDone = false
    }
    
    convenience init?(from json: String) {
        guard let data = json.data(using: .utf8),
              let jsonObject = try? JSONSerialization.jsonObject(with: data, options: []),
              let dict = jsonObject as? [String: Any] else {
            return nil
        }
        
        guard let id = dict["id"] as? String,
              let title = dict["title"] as? String,
              let notes = dict["notes"] as? String,
              let repeatanceCode = dict["repeatance_code"] as? Int,
              let isDone = dict["is_done"] as? Bool else {
            return nil
        }
        
        let date: Date? = (dict["date"] as? String)?.toDateFromUTC()
        
        self.init(title: title, notes: notes, date: date, time: nil, repeatance: RepeatanceOption(rawValue: repeatanceCode)!)
        self.id = id
        self.isDone = isDone
    }
    
    /// Get map representation of Reminder.
    private func toMap() -> [String: Any] {
        var map: [String: Any] = [
            "repeatance_code": repeatanceCode,
            "is_done": isDone
        ]
        
        map["id"] = id
        map["title"] = title
        map["notes"] = notes
        if let date = date { map["date"] = date.toUTCString() }

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
