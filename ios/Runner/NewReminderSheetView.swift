import SwiftUI

struct NewReminderSheetView: View {
    let onClose: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Button("Cancel") {
                    onClose()
                }
                .frame(width: 82)
                Spacer()
                Text("New reminder")
                    .fontWeight(.semibold)
                Spacer()
                Button("Add") {
                    
                }
                .frame(width: 82)
            }
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 43, trailing: 0))
            HStack {
                TextField(
                    "Title",
                    text: .constant("")
                )
                .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                .background(Color.white)
                .clipShape(
                    .rect(topLeadingRadius: CGFloat(12), topTrailingRadius: CGFloat(12))
                )
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            HStack {
                TextField(
                    "Notes",
                    text: .constant("")
                )
                .padding(EdgeInsets(top: 10, leading: 16, bottom: 100, trailing: 16))
                .background(Color.white)
                .clipShape(
                    .rect(bottomLeadingRadius: CGFloat(12), bottomTrailingRadius: CGFloat(12))
                )
            }
            .padding(EdgeInsets(top: -5, leading: 16, bottom: 0, trailing: 16))
            Spacer()
        }
        .background(Color.gray.opacity(0.1))
    }
}
