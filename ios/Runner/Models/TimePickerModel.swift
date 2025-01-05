import SwiftUI

class TimePickerModel: ObservableObject {
    @Published var selectedTime: Date = Date.now
    @Published var isTimePickerActive: Bool = false
    @Published var showTimePicker: Bool = false
    
    public func getSelectedTime() -> Date? {
        if !isTimePickerActive { return nil }
        return selectedTime.withTimeOnly
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
        isTimePickerActive = true
    }
    
    public func setInactive() -> Void {
        isTimePickerActive = false
    }
    
    public func formatTimeIfSelected() -> String? {
        if !isTimePickerActive { return nil }
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: selectedTime)
    }
}
