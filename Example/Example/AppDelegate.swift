//
//  AppDelegate.swift
//  Example
//
//  Created by 古林俊佑 on 2016/04/05.
//  Copyright © 2016年 Shunsuke Furubayashi. All rights reserved.
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
