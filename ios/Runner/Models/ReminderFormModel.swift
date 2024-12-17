class ReminderFormModel: ObservableObject {
    @Published var titleController: String = ""
    @Published var notesController: String = ""
    
    func isTitleNotEmpty() -> Bool {
        return !titleController.isEmpty
    }
}
