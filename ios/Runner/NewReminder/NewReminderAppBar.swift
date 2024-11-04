import SwiftUI

struct NewReminderAppBar: View {
    let onCancel: () -> Void
    let onAdd: () -> Void
    
    var body: some View {
        HStack() {
            Button("Cancel", action: onCancel)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("New reminder")
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
            Button("Add", action: onAdd)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding()
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
