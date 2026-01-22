// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "swiftui-cached-async-image",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "CachedAsyncImage",
            targets: ["CachedAsyncImage"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-docc-plugin",
            from: "1.0.0"
        )
    ],
    targets: [
        .target(
            name: "CachedAsyncImage",
            plugins: [
                .plugin(
                    name: "Swift-DocC",
                    package: "swift-docc-plugin"
                )
            ]
        )
    ]
)
