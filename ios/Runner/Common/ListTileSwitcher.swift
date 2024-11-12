import SwiftUI

struct ListTileSwitcher: View {
    @Binding var isToggleOn: Bool
    let title: String
    let imageName: String
    
    var body: some View {
        HStack {
            Toggle(isOn: $isToggleOn) {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.white)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 4.5)
                        .background(Color.red)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                    
                    Text(title)
                        .padding(.horizontal, 4)
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.white)
    }
}
