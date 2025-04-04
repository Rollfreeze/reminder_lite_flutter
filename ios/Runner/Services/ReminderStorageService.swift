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
    
    public func add(_ item: Reminder) {
        context.insert(item)
    }
    
    public func update(_ updated: Reminder) {
        guard let reminder = try? context.fetch(getDescriptorBy(updated.id)).first else { return }
        reminder.update(from: updated)
    }
    
    public func fetchFor(_ category: ReminderCategory) -> [Reminder] {
        do {
            let descriptor = getDescriptorBy(category)
            return try context.fetch(descriptor)
        } catch {
            print("Fetch error: \(error)")
            return []
        }
    }
    
    private func getDescriptorBy(_ id: UUID) -> FetchDescriptor<Reminder> {
        return FetchDescriptor<Reminder>(predicate: #Predicate { $0.id == id })
    }
    
    private func getDescriptorBy(_ category: ReminderCategory) -> FetchDescriptor<Reminder> {
        var predicate: Predicate<Reminder>
        
        switch (category) {
        case .today:
            predicate = #Predicate { $0.due != nil && $0.due!.isToday }
        case .month:
            predicate = #Predicate { $0.due != nil && $0.due!.isCurrentMonth }
        case .all:
            predicate = #Predicate { _ in true }
        case .completed:
            predicate = #Predicate { $0.isCompleted }
        }
        
        return FetchDescriptor<Reminder>(
            predicate: predicate,
            sortBy: [
                SortDescriptor(\.due, order: .forward),
                SortDescriptor(\.createdAt, order: .forward),
            ]
        )
    }
}
