import SwiftUI

struct NewReminderSheetView: View {
    let onCancel: () -> Void
    
    @State private var titleController: String = ""
    @State private var notesController: String = ""
    @State private var selectedDates: Set<DateComponents> = []
    @State private var selectedTime: Date = Date(timeIntervalSinceNow: 0)
    @State private var showDatePicker: Bool = false
    @State private var showTimePicker: Bool = false
    
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
                            selectedDates: $selectedDates,
                            selectedTime: $selectedTime,
                            showDatePicker: $showDatePicker,
                            showTimePicker: $showTimePicker,
                            selectedDateFormated: "selectedDates.wrappedValue",
                            selectedTimeFormated: $selectedTime.wrappedValue.formatted(.dateTime.hour().minute())
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
        .onChange(of: showDatePicker) { value in
            if value && selectedDates.isEmpty {
                setCurrentDate()
            }
        }
        .onChange(of: showTimePicker) { value in
            if (value) {
                showDatePicker = false
                if selectedDates.isEmpty { setCurrentDate() }
            } else {
                selectedTime = Date()
            }

            
        }
    }
    
    private func setCurrentDate() {
        let currentDateComponents = Calendar.current.dateComponents([.year, .month, .day], from: Date())
        selectedDates = [currentDateComponents]
        
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
