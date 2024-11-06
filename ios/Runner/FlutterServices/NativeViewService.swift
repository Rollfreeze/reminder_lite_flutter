import Foundation
import Flutter
import UIKit
import SwiftUI

class NativeViewService: NSObject, FlutterPlugin {
    public static var registrarServiceName: String = "NativeViewService"
    private static var flutterMethodChannelName: String = "native_view_service"
    
    static func register(with registrar: FlutterPluginRegistrar) {
        let methodChannel = FlutterMethodChannel(name: self.flutterMethodChannelName, binaryMessenger: registrar.messenger())
        registrar.addMethodCallDelegate(NativeViewService(), channel: methodChannel)
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
        RootViewService.presentFullBottomSheet(buider: { onClose in NewReminderSheetView(onCancel: onClose) })
    }
}
