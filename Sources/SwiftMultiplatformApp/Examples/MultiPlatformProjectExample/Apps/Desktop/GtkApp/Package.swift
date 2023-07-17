// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GtkApp",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GtkApp",
            targets: ["GtkApp"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/stackotter/swift-cross-ui", .branch("main")),
        .package(name: "MultiPlatformSharedLib", path: "../../../Libs/MultiPlatformSharedLib")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GtkApp",
            dependencies: [
                .product(name: "SwiftCrossUI", package: "swift-cross-ui"),
                "MultiPlatformSharedLib"
            ]
        ),
        .testTarget(
            name: "GtkAppTests",
            dependencies: [ "GtkApp" ]
        ),
    ]
)
