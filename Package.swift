// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoginServiceKit",
    platforms: [
      .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "LoginServiceKit",
            targets: ["LoginServiceKit"]),
    ],
    targets: [
        .target(
            name: "LoginServiceKit",
            dependencies: [],
            path: "Lib/LoginServiceKit"),
        .testTarget(
            name: "LoginServiceKitTests",
            dependencies: ["LoginServiceKit"],
            path: "Lib/LoginServiceKitTests"),
    ],
    swiftLanguageVersions: [.v5]
)
