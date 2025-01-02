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
            self.create()
            result(nil)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    func create() -> Void {
        RootViewService.presentFullBottomSheet(buider: { onClose in NewReminderSheetView(onCancel: onClose) })
    }
}
