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
                    
                    VStack(alignment: .leading) {
                        Text(title)
                            .offset(y: subTitle.isEmpty ? 0 : 2)
                        if (!subTitle.isEmpty) {
                            Text(subTitle)
                                .font(.subheadline)
                                .foregroundStyle(.blue)
                                .offset(x: 1, y: 2)
                        }
                    }
                    .padding(.horizontal, 4)
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
