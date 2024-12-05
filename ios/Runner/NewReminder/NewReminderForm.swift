import SwiftUI

struct NewReminderForm: View {
    @EnvironmentObject var form: ReminderFormModel
    
    var body: some View {
        VStack {
            TextField("Title", text: $form.titleController)
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
                .background(Color.white)
                .clipShape(.rect(topLeadingRadius: CGFloat(12), topTrailingRadius: CGFloat(12)))
            
            // Notes-area
            ZStack(alignment: .topLeading) {
                TextEditor(text: $form.notesController)
                    .padding(.vertical, 2)
                    .padding(.horizontal, 12)
                    .frame(height: 150)
                    .background(Color.white)
                    .clipShape(
                        .rect(bottomLeadingRadius: CGFloat(12), bottomTrailingRadius: CGFloat(12))
                    )
                
                // Pseudo-placeholder
                if form.notesController.isEmpty {
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
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}

