import SwiftUI

/// View to select repeat option of Reminder.
struct ReminderRepeatView: View {
    @Binding var repeatance: RepeatOption
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    ForEach(RepeatOption.allCases, id: \.self) { option in
                        HStack {
                            Text(option.rawValue)
                            Spacer()
                            if repeatance == option {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                                    .bold()
                            }
                        }
                        .padding(.vertical, 4)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            repeatance = option
                            dismiss()
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
