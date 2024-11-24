import SwiftUI

struct ListTileSwitcher: View {
    @Binding var isToggleOn: Bool
    let title: String
    @Binding var subTitle: String
    let imageName: String
    let bgColor: Color
    
    var body: some View {
        HStack {
            Toggle(isOn: $isToggleOn) {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.white)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 4.5)
                        .background(bgColor)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                    
                    VStack {
                        Text(title)
                        if (!subTitle.isEmpty) {
                            Text(subTitle)
                                .font(.subheadline)
                                .foregroundStyle(.blue)
                                .offset(x: 2, y: 2)
                        }
                    }
                    .padding(.horizontal, 4)
                    .padding(.vertical, 0)
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.white)
        .frame(maxHeight: 50)
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
