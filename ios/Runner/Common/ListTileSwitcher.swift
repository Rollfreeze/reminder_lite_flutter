import SwiftUI

struct ListTileSwitcher: View {
    let imageName: String
    let bgColor: Color
    let title: String
    let subTitle: String?
    let onActivePressed: () -> Void
    let onToggleChange: (_ value: Bool) -> Void
    @Binding var isToggleOn: Bool
    @State private var isPressed = false
    
    var body: some View {
        HStack {
            Toggle(isOn: Binding(
                get: { isToggleOn },
                set: onToggleChange
            )) {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.white)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 4.5)
                        .background(bgColor)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                    
                    VStack(alignment: .leading) {
                        Text(title)
                            .offset(y: subTitle == nil ? 0 : 2)
                        if let subTitle = subTitle {
                            Text(subTitle)
                                .font(.subheadline)
                                .foregroundStyle(.blue)
                                .offset(x: 1)
                        }
                    }
                    .padding(.horizontal, 4)
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(isPressed ? Color.gray.opacity(0.4) : Color.white)
        .animation(.easeInOut(duration: 0.2), value: isPressed)
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in
                    if (isToggleOn && !isPressed) {
                        isPressed = true
                        onActivePressed()
                    }
                }
                .onEnded { _ in
                    isPressed = false
                }
        )
        .frame(maxHeight: 50)
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
