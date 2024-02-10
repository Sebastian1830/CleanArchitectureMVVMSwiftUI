// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dependency",
    defaultLocalization: "es",
        platforms: [
          .iOS(.v17)
        ],
    products: [
        .library(
            name: "Dependency",
            targets: ["Dependency"]
        ),
    ],
    targets: [
        .target(
            name: "Dependency"
        ),
        .testTarget(
            name: "DependencyTests",
            dependencies: ["Dependency"]
        ),
    ]
)
