import PackageDescription

let package = Package(
    name: "SpooffFW",
    platforms: [
        .iOS(.v12) // o la versión mínima que soporte tu xcframework
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
        ),
        .target(
            name: "SpooffFWWrapper",
            dependencies: ["SpooffFW"],
            path: "Sources/SpooffFW"
        )
    ]
)
