import SwiftUI

struct NewReminderSheetView: View {
    let onClose: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Button("Cancel") {
                    onClose()
                }.frame(width: 82)
                Spacer()
                Text("New reminder").fontWeight(.semibold)
                Spacer()
                Button("Add") {
                    
                }.frame(width: 82)
            }
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
            Spacer()
        }
    }
}
