import SwiftUI

/// A new reminder sheet view with its UI logic.
struct NewReminderSheetView: View {
    /// Callback to close the view.
    let onCancel: () -> Void
    
    /// Model for text fields logic.
    @StateObject private var form = ReminderFormModel()
    
    /// Model for date presset logic.
    @StateObject private var datePicker = DatePickerModel()
    
    /// Model for time presset logic.
    @StateObject private var timePicker = TimePickerModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.15)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        NewReminderForm()
                            .environmentObject(form)
                        NewReminderPresets(
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
                BottomSheetAppBar(
                    onCancel: onCancel,
                    onAdd: onCancel,
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
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
