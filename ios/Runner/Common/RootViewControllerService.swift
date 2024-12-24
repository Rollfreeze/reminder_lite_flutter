import SwiftUI

/// Service class that can call iOS views for Flutter.
class RootViewService {
    static func getController() -> UIViewController? {
        let rootController = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }?
            .rootViewController
        
        return rootController
    }
    
    /// Calls a bottom sheet passing the `builder` as a body to it.
    static func presentFullBottomSheet<Content: View>(@ViewBuilder buider: @escaping (_ onClose: @escaping () -> Void) -> Content) -> Void {
        let viewController = UIViewController()

        let viewHostingController = UIHostingController(rootView: buider({
            viewController.dismiss(animated: true, completion: nil)
        }))
        
        viewController.addChild(viewHostingController)
        viewController.view.addSubview(viewHostingController.view)
        
        viewHostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewHostingController.view.topAnchor.constraint(equalTo: viewController.view.topAnchor),
            viewHostingController.view.leadingAnchor.constraint(equalTo: viewController.view.leadingAnchor),
            viewHostingController.view.trailingAnchor.constraint(equalTo: viewController.view.trailingAnchor),
            viewHostingController.view.bottomAnchor.constraint(equalTo: viewController.view.bottomAnchor)
        ])
        viewHostingController.didMove(toParent: viewController)
        
        let nav = UINavigationController(rootViewController: viewController)
        nav.modalPresentationStyle = .pageSheet
        nav.navigationBar.isHidden = true
        
        if let sheet = nav.sheetPresentationController {
            sheet.detents = [.large()]
        }
        
        self.getController()?.present(nav, animated: true, completion: nil)
    }
}
