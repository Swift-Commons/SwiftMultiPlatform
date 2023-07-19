// swift-tools-version:5.6
import PackageDescription
let package = Package(
    name: "WasmApp",
    platforms: [.macOS(.v11), .iOS(.v13)],
    products: [
        .executable(name: "WasmApp", targets: ["WasmApp"])
    ],
    dependencies: [
        .package(url: "https://github.com/TokamakUI/Tokamak", from: "0.11.1"),
        .package(name: "MultiPlatformSharedLib", path: "../../../Libs/MultiPlatformSharedLib")
    ],
    targets: [
        .executableTarget(
            name: "WasmApp",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak"),
                "MultiPlatformSharedLib"
            ]
        ),
        .testTarget(
            name: "WasmAppTests",
            dependencies: ["WasmApp"]),
    ]
)
