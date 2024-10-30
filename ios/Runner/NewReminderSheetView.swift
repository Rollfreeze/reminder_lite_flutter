import SwiftUI

struct SheetView: View {
    let onClose: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Button("Cancel") {
                    onClose()
                }.frame(width: 82)
                Spacer()
                Text("New reminder")
                Spacer()
                Button("Add") {
                    
                }.frame(width: 82)
            }
            Spacer()
        }
    }
}
