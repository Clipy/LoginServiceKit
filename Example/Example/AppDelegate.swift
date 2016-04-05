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

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let appPath = NSBundle.mainBundle().bundlePath
        LoginServiceKit.addPathToLoginItems(appPath)
        //LoginServiceKit.removePathFromLoginItems(appPath)
    }

    func applicationWillTerminate(aNotification: NSNotification) {}

}

