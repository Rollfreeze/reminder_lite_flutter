import SwiftUI

/// Service class that can call iOS views for Flutter.
class RootViewService {
    /// Returns the most root `UIViewController` in the iOS application.
    static func getRootController() -> UIViewController? {
        guard let rootController = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first(where: { $0.isKeyWindow })?
            .rootViewController else {
            return nil
        }
        return rootController
    }
    
    /// Presents a bottom sheet with the provided SwiftUI `View`.
    static func presentFullBottomSheet<Content: View>(
        onUserDismissView: @escaping () -> Void,
        @ViewBuilder builder: @escaping (_ onClose: @escaping () -> Void) -> Content
    ) {
        guard let rootController = getRootController() else { return }
        
        let contentViewController = ContentViewController()
        contentViewController.setOnDisappearHandler(onUserDismissView)
        
        let hostingController = UIHostingController(rootView: builder {
            contentViewController.dismiss(animated: true, completion: nil)
        })
        
        embedHostingController(hostingController, into: contentViewController)
        
        let navController = createNavigationController(root: contentViewController)
        rootController.present(navController, animated: true, completion: nil)
    }
    
    /// Embeds a `UIHostingController` into a given parent `UIViewController`.
    private static func embedHostingController(_ hostingController: UIHostingController<some View>, into parent: UIViewController) {
        parent.addChild(hostingController)
        parent.view.addSubview(hostingController.view)
        
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hostingController.view.topAnchor.constraint(equalTo: parent.view.topAnchor),
            hostingController.view.leadingAnchor.constraint(equalTo: parent.view.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: parent.view.trailingAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: parent.view.bottomAnchor)
        ])
        
        hostingController.didMove(toParent: parent)
    }
    
    /// Creates a `UINavigationController` with a bottom sheet presentation style.
    private static func createNavigationController(root: UIViewController) -> UINavigationController {
        let navController = UINavigationController(rootViewController: root)
        navController.modalPresentationStyle = .pageSheet
        navController.navigationBar.isHidden = true
        
        if let sheet = navController.sheetPresentationController {
            sheet.detents = [.large()]
        }
        
        return navController
    }
}

/// Custom `UIViewController` to manage the lifecycle of the presented SwiftUI `View`.
fileprivate class ContentViewController: UIViewController {
    private var onDidDisappear: (() -> Void)?
    
    func setOnDisappearHandler(_ handler: @escaping () -> Void) {
        onDidDisappear = handler
    }
    
    deinit {
        onDidDisappear?()
    }
}
