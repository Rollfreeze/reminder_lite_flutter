import SwiftUI

/// Reminder's form with title and notes fields.
struct ReminderForm: View {
    @EnvironmentObject var form: ReminderFormModel
    
    var body: some View {
        VStack {
            TextField("Title", text: $form.title)
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
                .background(Color.white)
                .clipShape(.rect(topLeadingRadius: CGFloat(12), topTrailingRadius: CGFloat(12)))
            
            // Notes-area
            ZStack(alignment: .topLeading) {
                TextEditor(text: $form.notes)
                    .padding(.vertical, 2)
                    .padding(.horizontal, 12)
                    .frame(height: 150)
                    .background(Color.white)
                    .clipShape(
                        .rect(bottomLeadingRadius: CGFloat(12), bottomTrailingRadius: CGFloat(12))
                    )
                
                // Pseudo-placeholder
                if form.notes.isEmpty {
                    Text("Notes")
                        .foregroundColor(.gray.opacity(0.5))
                        .padding(.vertical, 10)
                        .padding(.horizontal, 17)
                }
            }
            .offset(y: -7)
        }
        .padding()
    }
}

#Preview {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
}
