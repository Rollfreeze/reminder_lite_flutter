import SwiftUI

struct ReminderRepeatView: View {
    let options: [String] = [
        "Never",
        "Daily",
        "Weekdays",
        "Weekends",
        "Weekly",
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
                        }
                        .padding(.vertical, 4)
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
    ReminderRepeatView()
}
