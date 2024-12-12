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
                        NewReminderPresets()
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
        .onChange(of: datePicker.showDatePicker) { value in
            if (value) { timePicker.hide() }
        }
        .onChange(of: timePicker.showTimePicker) { value in
            if (value) { datePicker.hide() }
        }
        .onChange(of: datePicker.isDatePickerActive) { value in
            if (value) {
                datePicker.setDefault()
                datePicker.show()
                timePicker.hide()
            }
            else {
                datePicker.reset()
                timePicker.reset()
            }
        }
        .onChange(of: timePicker.isTimePickerActive) { value in
            if (value) {
                datePicker.setDefaultIfEmpty()
                datePicker.setActive()
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
