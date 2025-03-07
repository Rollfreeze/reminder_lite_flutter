import Foundation
import Flutter
import UIKit
import SwiftUI

/// Service class that working with Reminders.
class ReminderService: NSObject, FlutterPlugin {
    public static var registrarServiceName: String = "ReminderService"
    private static var flutterMethodChannelName: String = "ReminderServiceMethodChannel"
    
    static func register(with registrar: FlutterPluginRegistrar) {
        let methodChannel = FlutterMethodChannel(name: self.flutterMethodChannelName, binaryMessenger: registrar.messenger())
        registrar.addMethodCallDelegate(ReminderService(), channel: methodChannel)
    }
    
    func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch(call.method) {
        case "create":
            self.create(result)
        case "fetchFor":
            self.fetchFor(code: call.arguments as! Int, result)
        case "update":
            self.update(reminderJson: call.arguments as! [String: Any], result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    /// Creates GMT+0 `Reminder` object and returns next value to the Dart side:
    ///
    /// 1) `Reminder` json representation object if creating was successfully finished.
    /// 2) `nil` if creating was canceled or dismissed.
    func create(_ result: @escaping FlutterResult) -> Void {
        var isResultReturned: Bool = false
        
        RootViewService.presentFullBottomSheet(
            onUserDismissView: {
                if isResultReturned { return }
                result(nil)
            },
            buider: { (onClose: @escaping () -> Void) in
                ReminderView(
                    onCancel: onClose,
                    onConfirm: { (reminder: Reminder) in
                        result(reminder.toJson())
                        isResultReturned = true
                        onClose()
                    }
                )
            }
        )
    }
    
    func fetchFor(code: Int, _ result: @escaping FlutterResult) -> Void {
        do {
            let catergory = try ReminderCategory.from(code: code)
            let reminders = ReminderStorageService.shared.fetchFor(catergory)
            result(Reminder.jsonFromList(reminders))
        } catch {
            result(FlutterError(code: "Wrong argument", message: "ReminderCategory code: \(code) is wrong", details: nil))
        }
    }
    
    func update(reminderJson: [String: Any], _ result: @escaping FlutterResult) -> Void {
        
    }
}
