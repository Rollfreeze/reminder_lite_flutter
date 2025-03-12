import SwiftUI

class ReminderViewModel: ObservableObject {
    /// Identifier of editing reminder.
    private let defaultIdentifier: UUID?
    
    private let onCancel: () -> Void
    
    private let onConfirm: (Reminder) -> Void
    
    @Published var title: String
    
    @Published var notes: String

    @Published public var datePicker: DatePickerViewModel
    
    @Published public var timePicker: TimePickerViewModel
    
    @Published public var repeatance: RepeatanceOption
    
    init(onCancel: @escaping () -> Void, onConfirm: @escaping (Reminder) -> Void, initialReminder: Reminder? = nil) {
        self.defaultIdentifier = initialReminder?.id
        self.onCancel = onCancel
        self.onConfirm = onConfirm
        self.title = initialReminder?.title ?? ""
        self.notes = initialReminder?.notes ?? ""
        self.datePicker = DatePickerViewModel(selectedDate: initialReminder?.date)
        self.timePicker = TimePickerViewModel(selectedTime: initialReminder?.date)
        self.repeatance = try! RepeatanceOption.from(code: initialReminder?.repeatanceCode ?? 0)
    }
    
    public func isEditingMode() -> Bool {
        return defaultIdentifier != nil
    }
    
    /// Toggle the date presset showing when it's active.
    public func onActiveDatePressed() -> Void {
        withAnimation {
            timePicker.hide()
            datePicker.showDatePicker.toggle()
        }
    }
    
    /// Toggle the time presset showing when it's active.
    public func onActiveTimePressed() -> Void {
        withAnimation {
            datePicker.hide()
            timePicker.showTimePicker.toggle()
        }
    }
    
    /// Toggle active for the date presset.
    public func onToggleDate(_ value: Bool) -> Void {
        withAnimation {
            if (value) {
                timePicker.hide()
                datePicker.setDefault()
                datePicker.setActive()
                datePicker.show()
            }
            else {
                datePicker.reset()
                timePicker.reset()
            }
        }
    }
    
    /// Toggle active for the time presset.
    public func onToggleTime(_ value: Bool) -> Void {
        withAnimation {
            if (value) {
                datePicker.setActive()
                datePicker.hide()
                timePicker.setActive()
                timePicker.show()
            }
            else { timePicker.reset() }
        }
    }
    
    public func cancel () -> Void {
        onCancel()
    }
    
    public func confirm() -> Void {
        guard !title.isEmpty else { return }
        let reminder = Reminder(
            id: defaultIdentifier,
            title: title,
            notes: trimedNotes,
            date: datePicker.getSelectedDate(),
            time: timePicker.getSelectedTime(),
            repeatance: repeatance
        )
        
        if self.isEditingMode() {
            ReminderStorageService.shared.update(reminder)
        } else {
            ReminderStorageService.shared.add(reminder)
        }
  
        onConfirm(reminder)
    }
    
    private var trimedNotes : String {
        notes.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
