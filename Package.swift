// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AppsDataHelper",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AppsDataHelper",
            targets: ["AppsDataHelper"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AppsDataHelper",
            url: "https://github.com/smoke0030/AppsDataHelper/releases/download/1.0.0/AppsDataHelper.xcframework.zip",
            checksum: "2b6788e4aeea0b033e51b0a63b4b6c63944ad9807922ecbb033878e250265afd"
        )
    ]
)
