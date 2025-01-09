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
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    /// Creates GMT+0 `Reminder` object and returns next value to the Dart side:
    ///
    /// 1) `Reminder` json representation object if creating was successfully finished.
    /// 2) `nil` if creating was canceled.
    func create(_ result: @escaping FlutterResult) -> Void {
        RootViewService.presentFullBottomSheet(
            onUserDismissView: {
                result(nil)
            },
            buider: { (onClose: @escaping () -> Void) in
                ReminderView(
                    onCancel: {
                        onClose()
                        result(nil)
                    },
                    onConfirm: { (reminder: Reminder) in
                        onClose()
                        result(reminder.toJson())
                    }
                )
            }
        )
    }
}
