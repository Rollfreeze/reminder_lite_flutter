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
        case "getAll":
            self.getAll(result)
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
    
    func getAll(_ result: @escaping FlutterResult) -> Void {
        let reminders = ReminderStorageService.shared.fetchItems()
        result(Reminder.jsonFromList(reminders))
    }
}
