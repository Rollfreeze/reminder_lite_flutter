import SwiftUI

struct NewReminderSheetView: View {
    let onCancel: () -> Void
    
    @StateObject private var form = ReminderFormModel()
    @StateObject private var datePicker = DatePickerModel()
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
                    isConfirmActive: false
                )
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private func onActiveDatePressed() -> Void {
        timePicker.hide()
        datePicker.showDatePicker.toggle()
    }
    
    private func onActiveTimePressed() -> Void {
        datePicker.hide()
        timePicker.showTimePicker.toggle()
    }
    
    private func onToggleDate(_ value: Bool) -> Void {
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
    
    private func onToggleTime(_ value: Bool) -> Void {
        if (value) {
            datePicker.setDefaultIfEmpty()
            datePicker.setActive()
            timePicker.setActive()
            timePicker.show()
        }
        else { timePicker.reset() }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
