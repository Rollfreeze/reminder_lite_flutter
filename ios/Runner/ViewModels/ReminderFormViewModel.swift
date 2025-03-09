/// View Model to control form with title and notes of Reminder.
class ReminderFormViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var notes: String = ""
    
    func isTitleEmpty() -> Bool {
        return title.isEmpty
    }
    
    func getTrimedNotes() -> String {
        return notes.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
