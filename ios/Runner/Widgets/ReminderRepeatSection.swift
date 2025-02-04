import SwiftUI

/// Section with NavigationLink to repeat settings.
/// It also shows current selected option.
struct ReminderRepeatSection: View {
    @Binding var repeatance: RepeatOption
    
    var body: some View {
        Section {
            NavigationLink {
                ReminderRepeatView(repeatance: $repeatance)
            } label: {
                HStack {
                    IconBox(image: "repeat", boxColor: Color.gray)
                    Text("Repeat")
                        .padding(.horizontal, 4)
                    Spacer()
                    if repeatance != RepeatOption.never {
                        Text(repeatance.rawValue)
                            .foregroundStyle(.secondary)
                    }
                }
            }
        }
    }
}
