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
    
    public func addItem(_ item: Reminder) {
        context.insert(item)
        try! context.save()
    }
    
    public func fetchFor(_ category: ReminderCategory) -> [Reminder] {
        do {
            let descriptor = getDescriptor(category)
            return try context.fetch(descriptor)
        } catch {
            print("Fetch error: \(error)")
            return []
        }
    }
    
    private func getDescriptor(_ category: ReminderCategory) -> FetchDescriptor<Reminder> {
        var predicate: Predicate<Reminder>

        switch (category) {
        case .today:
            predicate = #Predicate { !$0.isDone && $0.date != nil && $0.date!.isToday }
        case .month:
            predicate = #Predicate { !$0.isDone && $0.date != nil && $0.date!.isCurrentMonth }
        case .all:
            predicate = #Predicate { !$0.isDone }
        case .done:
            predicate = #Predicate { $0.isDone }
        }
        
        return FetchDescriptor<Reminder>(
            predicate: predicate,
            sortBy: [
                .init(\.date)
            ]
        )
    }
}
