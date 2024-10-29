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
        
        if viewController == nil {return}
        
        let bottomSheetViewController = UIViewController()
        bottomSheetViewController.view.backgroundColor = .white
        
        let nav = UINavigationController(rootViewController: bottomSheetViewController)
        
        
        nav.modalPresentationStyle = .pageSheet
        
        if let sheet = nav.sheetPresentationController {
            sheet.detents = [.large()]
        }
        
        viewController!.present(nav, animated: true, completion: nil)
    }
    
    var getRootViewController: UIViewController? {
        if let keyWindow = UIApplication.shared.windows.first(where: {$0.isKeyWindow}) {
            return keyWindow.rootViewController
        }
        
        return nil
    }
    
    
}
