// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Euclid",
    products: [
        .library(name: "Euclid", targets: ["Euclid"]),
    ],
    platforms: [
        .macOS(.v15) // Specify macOS 15 as the minimum required version
        // Add other platforms like .iOS(.vXX) if Euclid uses APIs specific to them too
    ],
    targets: [
        .target(
            name: "Euclid",
            path: "Sources",
            exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "EuclidTests",
            dependencies: ["Euclid"],
            path: "Tests",
            exclude: ["Info.plist"]
        ),
    ]
)
