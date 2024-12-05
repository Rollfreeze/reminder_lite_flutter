import SwiftUI

class TimePickerModel: ObservableObject {
    @Published var selectedTime: Date = Date(timeIntervalSinceNow: 0)
    @Published var isTimePickerActive: Bool = false
    @Published var showTimePicker: Bool = false
    
    public func show() -> Void {
        showTimePicker = true
    }
    
    public func formatTimeIfSelected() -> String? {
        if !isTimePickerActive { return nil }
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: selectedTime)
    }
}
