import SwiftUI

/// View Model to control Time presset of Reminder.
class TimePickerViewModel: ObservableObject {
    @Published var selectedTime: Date
    @Published var isTimePickerActive: Bool
    @Published var showTimePicker: Bool
    
    init(selectedTime: Date?) {
        self.selectedTime = selectedTime ?? Date.now
        self.isTimePickerActive = selectedTime != nil
        self.showTimePicker = false
    }
    
    public func getSelectedTime() -> Date? {
        if !isTimePickerActive { return nil }
        return selectedTime
    }
    
    public func show() -> Void {
        showTimePicker = true
    }
    
    public func hide() -> Void {
        showTimePicker = false
    }
    
    public func reset() -> Void {
        selectedTime = Date.now
        isTimePickerActive = false
        showTimePicker = false
    }
    
    public func setActive() -> Void {
        selectedTime = Date.now
        isTimePickerActive = true
    }
    
    public func formatTimeIfSelected() -> LocalizedStringKey? {
        if !isTimePickerActive { return nil }
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let formattedTime = formatter.string(from: selectedTime)
        return LocalizedStringKey(formattedTime)
    }
}
