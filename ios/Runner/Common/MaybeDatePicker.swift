import SwiftUI

struct MaybeDatePicker: View {
    @Binding var showDatePicker: Bool
    @Binding var selectedDates: Set<DateComponents>
    @Binding var selectedDateFormated: String
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                imageName: "calendar",
                bgColor: Color.red,
                title: "Date",
                subTitle: $selectedDateFormated,
                isToggleOn: $showDatePicker
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
