import SwiftUI

struct NewReminderPresets: View {
    let onToggleDate: (_ value: Bool) -> Void
    let onActiveDatePressed: () -> Void
    let onToggleTime: (_ value: Bool) -> Void
    let onActiveTimePressed: () -> Void
    
    
    var body: some View {
        VStack {
            MaybeDatePicker(onToggleChange: onToggleDate, onActivePressed: onActiveDatePressed)
            .background(Color.white)
            .clipShape(.rect(topLeadingRadius: CGFloat(12), topTrailingRadius: CGFloat(12)))
            
            MaybeTimePicker(onToggleChange: onToggleTime, onActivePressed: onActiveTimePressed)
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
