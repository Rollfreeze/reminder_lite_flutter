import SwiftUI

struct ReminderRepeatSection: View {
    @Binding var repeatOption: String
    
    var body: some View {
        Section {
            NavigationLink {
                ReminderRepeatView(repeatOption: $repeatOption)
            } label: {
                HStack {
                    IconBox(image: "repeat", boxColor: Color.gray)
                    Text("Repeat")
                        .padding(.horizontal, 4)
                    Spacer()
                    if repeatOption != "Never" {
                        Text(repeatOption)
                            .foregroundStyle(.secondary)
                    }
                }
            }
        }
    }
}
