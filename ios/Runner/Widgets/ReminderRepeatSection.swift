import SwiftUI

struct ReminderRepeatSection: View {
    var body: some View {
        Section {
            NavigationLink {
                ReminderRepeatView()
            } label: {
                HStack {
                    IconBox(image: "repeat", boxColor: Color.gray)
                    Text("Repeat")
                        .padding(.horizontal, 4)
                }
            }
        }
    }
}
