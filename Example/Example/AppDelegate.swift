//
//  AppDelegate.swift
//
//  Example
//  GitHub: https://github.com/clipy
//  HP: https://clipy-app.com
//
//  Copyright © 2015-2019 Clipy Project.
//

import Cocoa
import LoginServiceKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        LoginServiceKit.addLoginItems()
        // LoginServiceKit.addLoginItems(at: Bundle.main.bundlePath)
        // LoginServiceKit.removeLoginItems()
    }

    func applicationWillTerminate(_ aNotification: Notification) {}

}
