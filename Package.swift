// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "FawaidModels",
    products: [
        .library(name: "FawaidModels", targets: ["FawaidModels"])
    ],
    targets: [
        .target(
            name: "FawaidModels",
            path: "Sources"
        )
    ]
)
