import SwiftUI

struct ReminderPresets: View {
    let onToggleDate: (_ value: Bool) -> Void
    let onActiveDatePressed: () -> Void
    let onToggleTime: (_ value: Bool) -> Void
    let onActiveTimePressed: () -> Void
    
    
    var body: some View {
        VStack {
            ReminderDatePicker(onToggleChange: onToggleDate, onActivePressed: onActiveDatePressed)
            .background(Color.white)
            .clipShape(.rect(topLeadingRadius: CGFloat(12), topTrailingRadius: CGFloat(12)))
            
            ReminderTimePicker(onToggleChange: onToggleTime, onActivePressed: onActiveTimePressed)
            .background(Color.white)
            .clipShape(.rect(bottomLeadingRadius: CGFloat(12), bottomTrailingRadius: CGFloat(12)))
            .offset(y: -7)
        }
        .padding()
    }
}

#Preview {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
}
