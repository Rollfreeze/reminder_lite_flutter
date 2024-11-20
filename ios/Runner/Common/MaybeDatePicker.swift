import SwiftUI

struct MaybeDatePicker: View {
    @Binding var showDatePicker: Bool
    @Binding var selectedDates: Set<DateComponents>
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                isToggleOn: $showDatePicker,
                title: "Date",
                imageName: "calendar",
                bgColor: Color.red
            )
            
            if showDatePicker {
                Divider()
                    .padding(.leading, 60)
                
                MultiDatePicker("Date", selection: $selectedDates)
                    .padding(.horizontal)
                    .onDisappear {
                        selectedDates.removeAll()
                    }
            }
        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
