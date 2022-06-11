// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ChartsLegacy",
    platforms: [
          .iOS(.v9),
          .tvOS(.v9),
          .macOS(.v10_11),
    ],
    products: [
        .library(
            name: "ChartsLegacy",
            targets: ["ChartsLegacy"]),
        .library(
            name: "ChartsDynamic",
            type: .dynamic,
            targets: ["ChartsLegacy"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "ChartsLegacy",
            dependencies: [.product(name: "Algorithms", package: "swift-algorithms")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
