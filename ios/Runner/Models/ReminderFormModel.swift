class ReminderFormModel: ObservableObject {
    @Published var title: String = ""
    @Published var notes: String = ""
    
    func isTitleNotEmpty() -> Bool {
        return !title.isEmpty
    }
}
