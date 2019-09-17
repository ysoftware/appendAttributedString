// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "appendAttributedStringWithEase",
	platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "appendAttributedString",
            targets: ["appendAttributedString"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "appendAttributedString",
            dependencies: [],
			path: "appendAttributedString/appendAttributedString"),
        .testTarget(
            name: "appendAttributedStringTests",
            dependencies: ["appendAttributedString"],
			path: "appendAttributedString/appendAttributedStringTests")
    ]
)
