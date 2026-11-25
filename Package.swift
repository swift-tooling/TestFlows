// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestFlows",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "TestFlows",
            targets: ["TestFlows"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-tooling/Testing.git", branch: "master"),
        .package(url: "https://github.com/swift-lco/Primitives.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/Writers.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/Readers.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/Path.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/FileTypes.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/Selection.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/Concatenation.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/Interfaces.git", branch: "master"),
        // .package(url: "https://github.com/swift-langs/Tokens.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/Matching.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/Ranking.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/Fuzzy.git", branch: "master"),
        // .package(url: "https://github.com/swift-lco/Milieu.git", branch: "master"),

        .package(url: "https://github.com/swift-lco/Difference.git", branch: "master"),

        .package(url: "https://github.com/swift-lco/ANSI.git", branch: "master"),
        .package(url: "https://github.com/swift-lco/Terminal.git", branch: "master"),

        // .package(url: "https://github.com/swift-tooling/Executable.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "TestFlows",
            dependencies: [
                .product(name: "Testing", package: "Testing"),
                .product(name: "Primitives", package: "Primitives"),
                .product(name: "Difference", package: "Difference"),
                .product(name: "ANSI", package: "ANSI"),
                .product(name: "Terminal", package: "Terminal"),
            ]
        ),
        // .testTarget(
        //     name: "TestFlowsTests",
        //     dependencies: ["TestFlows"]
        // ),
    ]
)
