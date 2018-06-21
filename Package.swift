// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "PayPal",
    products: [
        .library(name: "PayPal", targets: ["PayPal"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.5"),
    ],
    targets: [
        .target(name: "PayPal", dependencies: ["Vapor"]),
        .testTarget(name: "PayPalTests", dependencies: ["PayPal", "Vapor"]),
    ]
)
