import SwiftUI

struct NewReminderForm: View {
    var body: some View {
        VStack {
            TextField(
                "Title",
                text: .constant("")
            )
            .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
            .background(Color.white)
            .clipShape(
                .rect(topLeadingRadius: CGFloat(12), topTrailingRadius: CGFloat(12))
            )
            
            TextField(
                "Notes",
                text: .constant("")
            )
            .padding(EdgeInsets(top: 10, leading: 16, bottom: 100, trailing: 16))
            .background(Color.white)
            .clipShape(
                .rect(bottomLeadingRadius: CGFloat(12), bottomTrailingRadius: CGFloat(12))
            )
            .offset(y: -8)
            
            
            Divider()
                .background(Color.gray.opacity(0.1))
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                .offset(y: -146)
            
        }
        .padding()
        .offset(y: -16)
    }
}


#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}

