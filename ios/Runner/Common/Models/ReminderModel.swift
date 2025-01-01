/// A model that represents and contains all about some certain reminder.
struct ReminderModel {
    let id: String
    let title: String
    let notes: String
    let date: Date
    
    /// A new reminder.
    init(title: String, notes: String, date: Date, time: Date) {
        let fullDate = date.addingTimeInterval(time.timeIntervalSinceReferenceDate)
    
        self.id = UUID().uuidString
        self.title = title
        self.notes = notes
        self.date = fullDate
    }
    
    /// An existing reminder.
    init(id: String, title: String, notes: String, date: Date) {
        self.id = id
        self.title = title
        self.notes = notes
        self.date = date
    }
}
