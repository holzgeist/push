// swift-tools-version: 5.9
// The Swift Package Manager variant of the plugin, see the podspec for CocoaPods.
import PackageDescription

let package = Package(
    name: "push",
    platforms: [
        .iOS("12.0"),
        .macOS("10.14"),
    ],
    products: [
        .library(name: "push", targets: ["push"]),
    ],
    dependencies: [],
    targets: [
        // Pigeon output, Objective-C. Public headers are in Sources/push_objc/include.
        .target(
            name: "push_objc",
            path: "Sources/push_objc",
            publicHeadersPath: "include"
        ),
        // The plugin, Swift.
        .target(
            name: "push",
            dependencies: ["push_objc"],
            path: "Sources/push"
        ),
    ]
)
