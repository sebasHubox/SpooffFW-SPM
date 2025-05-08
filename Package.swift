// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "SpooffFW",
    platforms: [
        .iOS(.v16) // o la versión mínima que soporte tu xcframework
    ],
    products: [
        .library(
            name: "SpooffFW",
            targets: ["SpooffFW"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SpooffFW",
            path: "./SpooffFW.xcframework"
        )
    ]
)
