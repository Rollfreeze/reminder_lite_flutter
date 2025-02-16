import SwiftUI
import SwiftData

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
    @StateObject private var timePicker = TimePickerViewModel()
    
    /// Repeat option.
    @State private var repeatance: RepeatanceOption = RepeatanceOption.never
    
    /// SwiftData context.
    @Environment(\.modelContext) var context
    
    /// SwiftData container for CRUD.
    let container: ModelContainer = {
        let schema = Schema([Reminder.self])
        let container = try! ModelContainer(for: schema, configurations: [])
        return container
    }()
    
    var body: some View {
        NavigationStack {
            Form {
                ReminderTextInputSection()
                    .environmentObject(form)
                
                ReminderDueSection(
                    onToggleDate: onToggleDate,
                    onActiveDatePressed: onActiveDatePressed,
                    onToggleTime: onToggleTime,
                    onActiveTimePressed: onActiveTimePressed
                )
                .environmentObject(datePicker)
                .environmentObject(timePicker)
                
                ReminderRepeatSection(
                    repeatance: $repeatance
                )
            }
            .padding(.vertical, -24)
            .toolbar {
                ReminderAppBar(
                    onCancel: onCancel,
                    onConfirm: confirm,
                    isConfirmActive: form.isTitleNotEmpty()
                )
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        .modelContainer(container)
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
            time: timePicker.getSelectedTime(),
            repeatance: repeatance
        )
        context.insert(reminder)
        try! context.save()
        onConfirm(reminder)
    }
}

#Preview {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
}

#Preview("Russian") {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
    .environment(\.locale, Locale(identifier: "ru"))
}
