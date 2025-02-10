/// A model that represents and contains all about some certain reminder.
struct Reminder {
    let id: String
    let title: String
    let notes: String
    let date: Date?
    let repeatance: RepeatanceOption
    
    /// A new reminder.
    init(title: String, notes: String, date: Date?, time: Date?, repeatance: RepeatanceOption) {
        self.id = UUID().uuidString
        self.title = title
        self.notes = notes
        self.date = date?.replaceTimeFrom(time)
        self.repeatance = repeatance
    }
    
    /// Get json representation of Reminder.
    func toJson() -> [String: Any] {
        var json: [String: Any] = [
            "id": id,
            "title": title,
            "notes": notes,
            "repeatance": repeatance.rawValue,
        ]
        
        if let date = date {
            json["date"] = date.timeIntervalSince1970
        }
        
        return json
    }
}
