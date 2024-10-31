import Foundation
import Flutter
import UIKit
import SwiftUI


class NewReminderService: NSObject, FlutterPlugin {
    
    static func register(with registrar: FlutterPluginRegistrar) {
        let methodChannel = FlutterMethodChannel(name: "new_reminder_service", binaryMessenger: registrar.messenger())
        registrar.addMethodCallDelegate(NewReminderService(), channel: methodChannel)
    }
    
    func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch(call.method) {
        case "newReminderBottomSheet":
            self.newReminderBottomSheet()
            result(nil)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    func newReminderBottomSheet() -> Void {
        let viewController = getRootViewController
        viewController?.present(getControllerForBottomSheet, animated: true, completion: nil)
    }
    
    var getRootViewController: UIViewController? {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }?
            .rootViewController
    }
    
    var getControllerForBottomSheet: UINavigationController {
        let bottomSheetViewController = UIViewController()
        bottomSheetViewController.view.backgroundColor = .white
        
        let sheetView = SheetView(onClose: { bottomSheetViewController.dismiss(animated: true, completion: nil) })
        let sheetViewHostingController = UIHostingController(rootView: sheetView)
        
        bottomSheetViewController.addChild(sheetViewHostingController)
        bottomSheetViewController.view.addSubview(sheetViewHostingController.view)
        
        sheetViewHostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sheetViewHostingController.view.topAnchor.constraint(equalTo: bottomSheetViewController.view.topAnchor),
            sheetViewHostingController.view.leadingAnchor.constraint(equalTo: bottomSheetViewController.view.leadingAnchor),
            sheetViewHostingController.view.trailingAnchor.constraint(equalTo: bottomSheetViewController.view.trailingAnchor),
            sheetViewHostingController.view.bottomAnchor.constraint(equalTo: bottomSheetViewController.view.bottomAnchor)
        ])
        sheetViewHostingController.didMove(toParent: bottomSheetViewController)
        
        let nav = UINavigationController(rootViewController: bottomSheetViewController)
        nav.modalPresentationStyle = .pageSheet
        
        if let sheet = nav.sheetPresentationController {
            sheet.detents = [.large()]
        }
        
        return nav
    }
}
