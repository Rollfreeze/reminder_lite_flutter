import SwiftUI

struct NewReminderPresets: View {
    var body: some View {
        VStack {
            MaybeDatePicker()
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
