import SwiftUI

struct NewReminderSheetView: View {
    let onCancel: () -> Void
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.15)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        NewReminderForm()
                        NewReminderPresets()
                        Spacer()
                    }
                }
            }
            .toolbar { BottomSheetAppBar(onCancel: onCancel, onAdd: onCancel) }
        }
    }
}

#Preview {
    let nothing: () -> Void = { }
    NewReminderSheetView(onCancel: nothing)
}
