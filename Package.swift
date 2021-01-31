// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "fawaid-models",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "FawaidModels", targets: ["FawaidModels"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "FawaidModels", path: "Sources")
    ]
)
