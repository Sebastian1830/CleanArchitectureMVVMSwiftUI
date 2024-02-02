// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Infraestructure",
    defaultLocalization: "es",
    platforms: [
      .iOS(.v17)
    ],
    products: [
        .library(
            name: "Infraestructure",
            targets: ["Infraestructure"]
        ),
    ],
    dependencies: [
        .package(name: "Data", path: "../Data")
    ],
    targets: [
        .target(
            name: "Infraestructure",
            dependencies: [
                .product(name: "Data", package: "Data")
            ]
        ),
        .testTarget(
            name: "InfraestructureTests",
            dependencies: ["Infraestructure"]
        ),
    ]
)
