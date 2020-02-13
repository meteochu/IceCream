// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "IceCream",
    platforms: [
        .iOS(.v10), .tvOS(.v10), .watchOS(.v3), .macOS(.v10_12)
    ],
    products: [
        .library(name: "IceCream", type: .dynamic, targets: ["IceCream"]),
    ],
    dependencies: [
        .package(url: "git@github.com:realm/realm-cocoa.git", from: "4.0.0")
    ],
    targets: [
        .target(name: "IceCream", dependencies: ["RealmSwift"], path: "IceCream/Classes"),
    ]
)

