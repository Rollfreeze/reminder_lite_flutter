import SwiftUI

struct NewReminderPresets: View {
    var body: some View {
        VStack {
            MaybeDatePicker()
            .background(Color.white)
            .clipShape(.rect(topLeadingRadius: CGFloat(12), topTrailingRadius: CGFloat(12)))
            
            MaybeTimePicker()
            .background(Color.white)
            .clipShape(.rect(bottomLeadingRadius: CGFloat(12), bottomTrailingRadius: CGFloat(12)))
            .offset(y: -7)
        }
        .padding()
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
