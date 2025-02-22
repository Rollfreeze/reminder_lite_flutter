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
    
    /// A new reminder.
    init(title: String, notes: String, date: Date?, time: Date?, repeatance: RepeatanceOption) {
        self.id = UUID().uuidString
        self.title = title
        self.notes = notes
        self.date = date?.replaceTimeFrom(time)
        self.repeatanceCode = repeatance.rawValue
    }
    
    /// Get map representation of Reminder.
    private func toMap() -> [String: Any] {
        var map: [String: Any] = [
            "repeatance_code": repeatanceCode
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
        ]
        
        if let date = date {
            json["date"] = date.timeIntervalSince1970
        }
        
        return json
    }
}
