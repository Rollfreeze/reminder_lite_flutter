import SwiftUI

struct NewReminderSheetView: View {
    let onCancel: () -> Void
    
    @State private var titleController: String = ""
    @State private var notesController: String = ""
    @State private var selectedDates: Set<DateComponents> = []
    @State private var selectedTime: Date = Date(timeIntervalSinceNow: 0)
    @State private var showDatePicker: Bool = false
    @State private var showTimePicker: Bool = false
    @State private var isDatePickerActive: Bool = false
    @State private var isTimePickerActive: Bool = false
    
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
                        NewReminderPresets(
                            onActiveDatePressed: { showDatePicker.toggle() },
                            onActiveTimePressed: { showTimePicker.toggle() },
                            selectedDates: $selectedDates,
                            selectedTime: $selectedTime,
                            showDatePicker: $showDatePicker,
                            showTimePicker: $showTimePicker,
                            isDatePickerActive: $isDatePickerActive,
                            isTimePickerActive: $isTimePickerActive
                        )
                        Spacer()
                    }
                }
            }
            .toolbar {
                BottomSheetAppBar(
                    onCancel: onCancel,
                    onAdd: onCancel,
                    isConfirmActive: !selectedDates.isEmpty
                )
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        .onChange(of: isDatePickerActive) { value in
            showDatePicker = value
            showTimePicker = false
            if (!value) {
                selectedDates = []
                isTimePickerActive = false
            }
            else { selectedDates = [Calendar.current.dateComponents([.year, .month, .day], from: Date())] }
        }
        .onChange(of: isTimePickerActive) { value in
            showTimePicker = value
            guard value else { return }
            selectedTime = Date()
            isDatePickerActive = true
            showDatePicker = false
        }
        .onChange(of: showDatePicker) { value in
            if (value) { showTimePicker = false }
        }
        .onChange(of: showTimePicker) { value in
            if (value) { showDatePicker = false }
        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
