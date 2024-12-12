import SwiftUI

class TimePickerModel: ObservableObject {
    @Published var selectedTime: Date = Date(timeIntervalSinceNow: 0)
    @Published var isTimePickerActive: Bool = false
    @Published var showTimePicker: Bool = false
    
    public func showToggle() -> Void {
        if (isTimePickerActive) { showTimePicker.toggle() }
    }
    
    public func formatTimeIfSelected() -> String? {
        if !isTimePickerActive { return nil }
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: selectedTime)
    }
}
