import SwiftData

/// A model that represents and contains all about some certain reminder.
@Model
class Reminder {
    @Attribute(.unique) var id: String
    var title: String
    var notes: String
    var date: Date?
//    var repeatance: RepeatanceOption
    var repeatanceCode: Int
    
    /// A new reminder.
    init(title: String, notes: String, date: Date?, time: Date?, repeatance: RepeatanceOption) {
        self.id = UUID().uuidString
        self.title = title
        self.notes = notes
        self.date = date?.replaceTimeFrom(time)
//        self.repeatance = repeatance
        self.repeatanceCode = repeatance.rawValue
    }
    
    /// Get json representation of Reminder.
    func toJson() -> [String: Any] {
        var json: [String: Any] = [
            "id": id,
            "title": title,
            "notes": notes,
//            "repeatance": repeatance.rawValue,
            "repeatance": repeatanceCode,
        ]
        
        if let date = date {
            json["date"] = date.timeIntervalSince1970
        }
        
        return json
    }
}
