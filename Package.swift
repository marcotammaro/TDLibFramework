// swift-tools-version:5.3
// DO NOT EDIT! Generated automatically. See scripts/swift_package_generator.py
import PackageDescription


let package = Package(
    name: "TDLibFramework",
    platforms: [
        // Minimum versions as of Xcode 14.2
        .iOS(.v11),
        .macOS(.v10_13),
        .watchOS(.v4),
        .tvOS(.v11)
    ],
    products: [
        .library(
            name: "TDLibFramework",
            targets: ["TDLibFrameworkWrapper"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TDLibFrameworkWrapper",
            dependencies: [.target(name: "TDLibFramework")],
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedLibrary("z"),
            ]
        ),
        .binaryTarget(
            name: "TDLibFramework",
            url: "https://github.com/Swiftgram/TDLibFramework/releases/download/1.8.16-db5d5da0/TDLibFramework.zip",
            checksum: "ec729e64e6893a8b8d3ea2f6814091be80ccd38bc1bae0e60ce0a2c944f74f7a"
        ),
        .testTarget(
            name: "TDLibFrameworkTests",
            dependencies: ["TDLibFrameworkWrapper"]
        ),
    ]
)
