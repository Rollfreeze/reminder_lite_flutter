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
            if (value) { timePicker.showTimePicker = false }
        }
        .onChange(of: timePicker.showTimePicker) { value in
            if (value) { datePicker.showDatePicker = false }
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
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
