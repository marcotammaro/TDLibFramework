// swift-tools-version:5.3
// DO NOT EDIT! Generated automatically. See scripts/swift_package_generator.py
import PackageDescription


let package = Package(
    name: "TDLibFramework",
    platforms: [
        // Minimum versions as of Xcode 14.2
        .iOS(.v11), // v12 is minimum version for openssl, may cause some incompatibility
        .macOS(.v10_13), // v10_15 is minimum version for openssl, may cause some incompatibility
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
            url: "https://github.com/Swiftgram/TDLibFramework/releases/download/1.8.23-4bafdc2b/TDLibFramework.zip",
            checksum: "1a1c4becbdc577c5a7b3aa5bd8daf2f281b0d56ba0294be850abbd5b09693b8c"
        ),
        .testTarget(
            name: "TDLibFrameworkTests",
            dependencies: ["TDLibFrameworkWrapper"]
        ),
    ]
)
