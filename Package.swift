// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftHashTest",
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMinor(from: "0.9.0")),
    .package(url: "https://github.com/daisuke-t-jp/FNV.git", .upToNextMinor(from: "1.0.0")),
    .package(url: "https://github.com/daisuke-t-jp/MurmurHash-Swift.git", .upToNextMinor(from: "1.0.0")),
    .package(url: "https://github.com/daisuke-t-jp/xxHash-Swift.git", .upToNextMinor(from: "1.0.0")),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .target(
      name: "SwiftHashTest",
      dependencies: ["CryptoSwift", "FNV", "MurmurHash-Swift", "xxHash-Swift"]),
    .testTarget(
      name: "SwiftHashTestTests",
      dependencies: ["SwiftHashTest"]),
  ],
  swiftLanguageVersions: [.v5]
)
