import SwiftUI

struct NewReminderSheetView: View {
    let onCancel: () -> Void
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.15)
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    NewReminderAppBar(onCancel: onCancel, onAdd: onCancel)
                    NewReminderForm()
                    NewReminderPresets()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
