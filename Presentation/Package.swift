// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Presentation",
    defaultLocalization: "es",
    platforms: [
      .iOS(.v17)
    ],
    products: [
        .library(
            name: "Presentation",
            targets: ["Presentation"]
        ),
    ],
    dependencies: [
        .package(name: "Data", path: "../Data")
    ],
    targets: [
        .target(
            name: "Presentation",
            dependencies: [
                .product(name: "Data", package: "Data")
            ]
        ),
        .testTarget(
            name: "PresentationTests",
            dependencies: ["Presentation"]
        ),
    ]
)
