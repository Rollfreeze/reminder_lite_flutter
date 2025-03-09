import SwiftUI

/// Reminder's form section with title and notes fields.
struct ReminderTextInputSection: View {
    @ObservedObject var form: ReminderFormViewModel
    
    var body: some View {
        Section {
            TextField("Title", text: $form.title)
            TextEditor(text: $form.notes)
                .padding(.vertical, -8)
                .padding(.horizontal, -4)
                .frame(height: 100)
                .overlay {
                    if form.notes.isEmpty {
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
