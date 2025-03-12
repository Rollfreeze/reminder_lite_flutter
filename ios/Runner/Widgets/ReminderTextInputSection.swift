import SwiftUI

/// Reminder's form section with title and notes fields.
struct ReminderTextInputSection: View {
    @Binding var title: String
    @Binding var notes: String
    
    var body: some View {
        Section {
            TextField("Title", text: $title)
            TextEditor(text: $notes)
                .padding(.vertical, -8)
                .padding(.horizontal, -4)
                .frame(height: 100)
                .overlay {
                    if notes.isEmpty {
                        VStack {
                            HStack {
                                Text("Notes")
                                    .foregroundColor(.gray.opacity(0.5))
                                Spacer()
                            }
                            Spacer()
                        }
                    }
                }
        }
    }
}

#Preview {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
}
