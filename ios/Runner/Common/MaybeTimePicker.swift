import SwiftUI

struct MaybeTimePicker: View {
    @State private var showTimePicker: Bool = false
//    @Binding var selectedDates: Set<DateComponents>
    
    var body: some View {
        VStack {
            ListTileSwitcher(
                isToggleOn: $showTimePicker,
                title: "Time",
                imageName: "clock.fill",
                bgColor: Color.blue
            )
            
            if showTimePicker {
                Divider()
                    .padding(.leading, 60)
            }
        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
