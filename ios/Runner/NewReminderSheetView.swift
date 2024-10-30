import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button("Cancel") {
                    dismiss()
                }.frame(width: 82)
                Spacer()
                Text("New reminder")
                Spacer()
                Button("Add") {
                    
                }.frame(width: 82)
            }
            Spacer()
        }
        .padding()
    }
}
