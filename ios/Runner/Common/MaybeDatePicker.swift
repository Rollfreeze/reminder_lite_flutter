import SwiftUI

struct MaybeDatePicker: View {
    @State private var isOn: Bool = false
    @State private var selectedDates: Set<DateComponents> = []
    
    var body: some View {
        VStack {
            HStack {
                Toggle(isOn: $isOn) {
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
        }
        if isOn {
            MultiDatePicker("Label", selection: $selectedDates)
                .transition(.move(edge: .top))
                .animation(.easeInOut, value: isOn)
        }
        
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
