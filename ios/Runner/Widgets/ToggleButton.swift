import SwiftUI

/// A Toggle with additional button on it.
struct ToggleButton: View {
    let icon: String
    let iconColor: Color
    let title: LocalizedStringResource
    let subtitle: String?
    let onActivePressed: () -> Void
    let onToggleChange: (_ value: Bool) -> Void
    @Binding var isToggleOn: Bool
    
    var body: some View {
        ZStack {
            if isToggleOn {
                Button(action: onActivePressed) { EmptyView() }
            }
            Toggle(
                isOn: Binding(
                    get: { isToggleOn },
                    set: onToggleChange
                )
            ) {
                HStack {
                    IconBox(image: icon, boxColor: iconColor)
                    VStack(alignment: .leading) {
                        Text(title)
                        if (subtitle != nil) {
                            Text(subtitle!)
                                .offset(y: -2)
                                .font(.subheadline)
                                .foregroundStyle(.blue)
                        }
                    }
                    .padding(.horizontal, 4)
                    Spacer()
                }
            }
        }
        .frame(maxHeight: 36)
    }
}

#Preview {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
}
