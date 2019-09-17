// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "appendAttributedStringWithEase",
    products: [
        .library(
            name: "appendAttributedStringWithEase",
            targets: ["appendAttributedStringWithEase"]),
    ],
    dependencies: [ ],
    targets: [
        .target(
            name: "appendAttributedStringWithEase",
            dependencies: []),
        .testTarget(
            name: "appendAttributedStringWithEaseTests",
            dependencies: ["appendAttributedStringWithEase"]),
    ]
)
