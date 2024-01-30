// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UI",
    defaultLocalization: "es",
    platforms: [
      .iOS(.v17)
    ],
    products: [
        .library(
            name: "UI",
            targets: ["UI"]
        ),
    ],
    dependencies: [
        .package(name: "Presentation", path: "../Presentation")
    ],
    targets: [
        .target(
            name: "UI",
            dependencies: [
                .product(name: "Presentation", package: "Presentation")
            ]
        ),
        .testTarget(
            name: "UITests",
            dependencies: ["UI"]
        ),
    ]
)
