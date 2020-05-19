// 
//  LoginServiceKitTests.swift
//
//  LoginServiceKitTests
//  GitHub: https://github.com/clipy
//  HP: https://clipy-app.com
// 
//  Copyright © 2015-2020 Clipy Project.
//

import XCTest
@testable import LoginServiceKit

final class LoginServiceKitTests: XCTestCase {

    override func setUp() {
        super.setUp()
        LoginServiceKit.removeLoginItems()
    }

    override func tearDown() {
        super.tearDown()
        LoginServiceKit.removeLoginItems()
    }

    func testLoginItems() {
        XCTAssertFalse(LoginServiceKit.isExistLoginItems())
        LoginServiceKit.addLoginItems()
        XCTAssertTrue(LoginServiceKit.isExistLoginItems())
        LoginServiceKit.removeLoginItems()
        XCTAssertFalse(LoginServiceKit.isExistLoginItems())
    }

}
