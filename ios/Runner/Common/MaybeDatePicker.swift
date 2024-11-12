import SwiftUI

struct MaybeDatePicker: View {
    @State private var showDatePicker: Bool = false
    @Binding var selectedDates: Set<DateComponents>
    
    var body: some View {
        VStack {
            HStack {
                Toggle(isOn: $showDatePicker) {
                    HStack {
                        Image(systemName: "calendar")
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 4.5)
                            .background(Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 4))
                        
                        Text("Date")
                            .padding(.horizontal, 4)
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(Color.white)
            
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
