import SwiftUI
import SwiftData

/// A new reminder sheet view with its UI logic.
struct ReminderView: View {
    /// View model with state elements.
    @StateObject private var viewModel: ReminderViewModel
    
    init(onCancel: @escaping () -> Void, onConfirm: @escaping (Reminder) -> Void, initialReminder: Reminder? = nil) {
        _viewModel = StateObject(
            wrappedValue: ReminderViewModel(
                onCancel: onCancel,
                onConfirm: onConfirm,
                initialReminder: initialReminder
            )
        )
    }
    
    var body: some View {
        NavigationStack {
            Form {
                ReminderTextInputSection(
                    title: $viewModel.title,
                    notes: $viewModel.notes
                )
                ReminderDueSection(viewModel: viewModel)
                ReminderRepeatSection(repeatance: $viewModel.repeatance)
            }
            .padding(.vertical, -24)
            .toolbar {
                ReminderAppBar(viewModel: viewModel)
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
}

#Preview("Russian") {
    ReminderView(
        onCancel: {},
        onConfirm: { reminder in }
    )
    .environment(\.locale, Locale(identifier: "ru"))
}
