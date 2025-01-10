import SwiftUI

/// A new reminder sheet view with its UI logic.
struct ReminderView: View {
    /// Callback to close the view.
    let onCancel: () -> Void
    
    /// Callback to confirm changes.
    let onConfirm: (Reminder) -> Void
    
    /// Model for text fields logic.
    @StateObject private var form = ReminderFormViewModel()
    
    /// Model for date presset logic.
    @StateObject private var datePicker = DatePickerViewModel()
    
    /// Model for time presset logic.
    @StateObject private var timePicker = TimePickerModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.15)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        ReminderForm()
                            .environmentObject(form)
                        ReminderPresets(
                            onToggleDate: onToggleDate,
                            onActiveDatePressed: onActiveDatePressed,
                            onToggleTime: onToggleTime,
                            onActiveTimePressed: onActiveTimePressed
                        )
                        .environmentObject(datePicker)
                        .environmentObject(timePicker)
                        Spacer()
                    }
                }
            }
            .toolbar {
                ReminderAppBar(
                    onCancel: onCancel,
                    onConfirm: confirm,
                    isConfirmActive: form.isTitleNotEmpty()
                )
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    /// Toggle the date presset showing when it's active.
    private func onActiveDatePressed() -> Void {
        withAnimation {
            timePicker.hide()
            datePicker.showDatePicker.toggle()
        }
    }
    
    /// Toggle the time presset showing when it's active.
    private func onActiveTimePressed() -> Void {
        withAnimation {
            datePicker.hide()
            timePicker.showTimePicker.toggle()
        }
    }
    
    /// Toggle active for the date presset.
    private func onToggleDate(_ value: Bool) -> Void {
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
    private func onToggleTime(_ value: Bool) -> Void {
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
    
    private func confirm() -> Void {
        guard form.isTitleNotEmpty() else { return }
        let reminder = Reminder(
            title: form.title,
            notes: form.notes,
            date: datePicker.getSelectedDate(),
            time: timePicker.getSelectedTime()
        )
        onConfirm(reminder)
    }
}

#Preview {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
}
