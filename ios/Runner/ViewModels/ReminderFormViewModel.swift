/// View Model to control form with title and notes of Reminder.
class ReminderFormViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var notes: String = ""
    
    init(title: String?, notes: String?) {
        self.title = title ?? ""
        self.notes = notes ?? ""
    }
    
    func isTitleEmpty() -> Bool {
        return title.isEmpty
    }
    
    func getTrimedNotes() -> String {
        return notes.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
