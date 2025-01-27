import SwiftUI

/// An icon inside colored box for Reminders interaction menu actions.
struct IconBox: View {
    let image: String
    let boxColor: Color
    
    var body: some View {
        ZStack {
            boxColor
                .frame(width: 30, height: 30)
                .cornerRadius(8)
            
            Image(systemName: image)
                .foregroundColor(.white)
        }
    }
}
