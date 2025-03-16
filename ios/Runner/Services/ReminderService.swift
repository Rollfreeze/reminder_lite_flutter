import Foundation
import Flutter
import UIKit
import SwiftUI

/// Service class that interacts with Reminders via Flutter's MethodChannel.
class ReminderService: NSObject, FlutterPlugin {
    
    public static let registrarServiceName = "ReminderService"
    private static let flutterMethodChannelName = "ReminderServiceMethodChannel"
    
    static func register(with registrar: FlutterPluginRegistrar) {
        let methodChannel = FlutterMethodChannel(name: flutterMethodChannelName, binaryMessenger: registrar.messenger())
        let instance = ReminderService()
        registrar.addMethodCallDelegate(instance, channel: methodChannel)
    }
    
    func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "create":
            create(result: result)
        case "fetchFor":
            if let code = call.arguments as? Int {
                fetchFor(code: code, result: result)
            } else {
                result(FlutterError(code: "Invalid Arguments", message: "Expected an integer for fetchFor method", details: nil))
            }
        case "update":
            update(json: call.arguments as? String, result: result)
        case "toggleCompletion":
            toggleCompletion(json: call.arguments as? String, result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    /// Presents a Reminder creation view.
    func create(result: @escaping FlutterResult) {
        var isResultReturned = false
        
        RootViewService.presentFullBottomSheet(
            onUserDismissView: {
                if !isResultReturned {
                    result(nil)
                }
            },
            builder: { onClose in
                ReminderView(
                    onCancel: onClose,
                    onConfirm: { reminder in
                        result(reminder.toJson())
                        isResultReturned = true
                        onClose()
                    }
                )
            }
        )
    }
    
    /// Fetches reminders for a given category code.
    func fetchFor(code: Int, result: @escaping FlutterResult) {
        do {
            let category = try ReminderCategory.from(code: code)
            let reminders = ReminderStorageService.shared.fetchFor(category)
            result(Reminder.jsonFromList(reminders))
        } catch {
            result(FlutterError(code: "Invalid Category Code", message: "Invalid ReminderCategory code: \(code)", details: nil))
        }
    }
    
    /// Updates a reminder from a JSON string.
    func update(json: String?, result: @escaping FlutterResult) {
        guard let jsonData = parseJson(json) else {
            result(FlutterError(code: "Invalid JSON", message: "Failed to parse reminder JSON", details: nil))
            return
        }
        
        let initialReminder = Reminder(from: jsonData)
        var isResultReturned = false
        
        RootViewService.presentFullBottomSheet(
            onUserDismissView: {
                if !isResultReturned {
                    result(nil)
                }
            },
            builder: { onClose in
                ReminderView(
                    onCancel: onClose,
                    onConfirm: { reminder in
                        let reminders = ReminderStorageService.shared.fetchFor(.all)
                        result(Reminder.jsonFromList(reminders))
                        isResultReturned = true
                        onClose()
                    },
                    initialReminder: initialReminder
                )
            }
        )
    }
    
    /// Toggles completion state of a reminder.
    func toggleCompletion(json: String?, result: @escaping FlutterResult) {
        guard let jsonData = parseJson(json) else {
            result(FlutterError(code: "Invalid JSON", message: "Failed to parse reminder JSON", details: nil))
            return
        }
        
        guard let reminder = Reminder(from: jsonData) else {
            result(FlutterError(code: "Invalid Reminder", message: "Failed to create Reminder from JSON", details: nil))
            return
        }
        
        ReminderStorageService.shared.update(reminder)
        let reminders = ReminderStorageService.shared.fetchFor(.all)
        result(Reminder.jsonFromList(reminders))
    }
    
    /// Parses a JSON string into a dictionary.
    private func parseJson(_ json: String?) -> [String: Any]? {
        guard let json = json, let data = json.data(using: .utf8) else { return nil }
        
        do {
            return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        } catch {
            return nil
        }
    }
}
