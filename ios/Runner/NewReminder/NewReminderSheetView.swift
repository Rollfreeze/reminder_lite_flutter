import SwiftUI

struct NewReminderSheetView: View {
    let onCancel: () -> Void
    
    @State private var titleController: String = ""
    @State private var notesController: String = ""
    
    @StateObject private var datePicker = DatePickerModel()
    @StateObject private var timePicker = TimePickerModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.15)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        NewReminderForm(
                            titleController: $titleController,
                            notesController: $notesController
                        )
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
//        .onChange(of: isDatePickerActive) { value in
//            showDatePicker = value
//            showTimePicker = false
//            if (!value) {
//                selectedDates = []
//                isTimePickerActive = false
//            }
//            else { selectedDates = [Calendar.current.dateComponents([.year, .month, .day], from: Date())] }
//        }
//        .onChange(of: isTimePickerActive) { value in
//            showTimePicker = value
//            guard value else { return }
//            selectedTime = Date()
//            isDatePickerActive = true
//            showDatePicker = false
//        }
//        .onChange(of: showDatePicker) { value in
//            if (value) { showTimePicker = false }
//        }
//        .onChange(of: showTimePicker) { value in
//            if (value) { showDatePicker = false }
//        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
