//
//  AppDelegate.swift
//
//  Example
//  GitHub: https://github.com/clipy
//  HP: https://clipy-app.com
//
//  Copyright © 2015-2020 Clipy Project.
//

import Cocoa
import LoginServiceKit

@NSApplicationMain
final class AppDelegate: NSObject, NSApplicationDelegate {

    // MARK: - Properties
    @IBOutlet private weak var window: NSWindow!
    @IBOutlet private weak var loginStatusTextField: NSTextField!

    // NARK: - NSApplication Delegte
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        checkLoginStatus()
    }

    private func checkLoginStatus() {
        loginStatusTextField.stringValue = (LoginServiceKit.isExistLoginItems()) ? "Login Status: On" : "Login Status: Off"
    }
    
}

// MARK: - IBActions
private extension AppDelegate {
    @IBAction func addLoginItem(_ sender: Any) {
        LoginServiceKit.addLoginItems()
        checkLoginStatus()
    }

    @IBAction func removeLoginItem(_ sender: Any) {
        LoginServiceKit.removeLoginItems()
        checkLoginStatus()
    }
}
