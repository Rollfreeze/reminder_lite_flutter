import Foundation
import SwiftData

class ReminderStorageService {
    static let shared = ReminderStorageService()
    private let modelContainer: ModelContainer
    private let context: ModelContext
    
    init() {
        modelContainer = try! ModelContainer(for: Reminder.self)
        context = ModelContext(modelContainer)
    }
    
    public func fetchItems() -> [Reminder] {
        let fetchDescriptor = FetchDescriptor<Reminder>()
        do {
            return try context.fetch(fetchDescriptor)
        } catch {
            print("Fetch error: \(error)")
            return []
        }
    }

    public func addItem(_ item: Reminder) {
        context.insert(item)
        try! context.save()
    }
}
