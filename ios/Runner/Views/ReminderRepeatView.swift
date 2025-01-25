import SwiftUI

struct ReminderRepeatView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    HStack {
                        Text("Never")
                        Spacer()
                    }
                    .padding(.vertical, 4)
                    
                    HStack {
                        Text("Daily")
                        Spacer()
                    }
                    .padding(.vertical, 4)
                    
                    HStack {
                        Text("Weekdays")
                        Spacer()
                    }
                    .padding(.vertical, 4)
                    
                    HStack {
                        Text("Weekends")
                        Spacer()
                    }
                    .padding(.vertical, 4)
                    
                    HStack {
                        Text("Weekly")
                        Spacer()
                    }
                    .padding(.vertical, 4)
                    
                    HStack {
                        Text("Fortnightly")
                        Spacer()
                    }
                    .padding(.vertical, 4)
                    
                    HStack {
                        Text("Monthly")
                        Spacer()
                    }
                    .padding(.vertical, 4)
                    
                    HStack {
                        Text("Every 3 Months")
                        Spacer()
                    }
                    .padding(.vertical, 4)
                    
                    HStack {
                        Text("Every 6 Months")
                        Spacer()
                    }
                    .padding(.vertical, 4)
                    
                    HStack {
                        Text("Yearly")
                        Spacer()
                    }
                    .padding(.vertical, 4)

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
