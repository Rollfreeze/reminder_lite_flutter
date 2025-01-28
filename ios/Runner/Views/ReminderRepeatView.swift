import SwiftUI

struct ReminderRepeatView: View {
    @Binding var repeatOption: String
    
    let options: [String] = [
        "Never",
        "Daily",
        "Weekdays",
        "Weekends",
        "Weekly",
        "Every 2 Weeks",
        "Fortnightly",
        "Monthly",
        "Every 3 Months",
        "Every 6 Months",
        "Yearly",
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    ForEach(options, id: \.self) { option in
                        HStack {
                            Text(option)
                            Spacer()
                            if repeatOption == option {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                                    .bold()
                            }
                        }
                        .padding(.vertical, 4)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            repeatOption = option
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Repeat")
                        .font(.headline)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
}
