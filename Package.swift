// swift-tools-version:5.5

import PackageDescription

let package = Package(

  name: "RealMP",

  platforms: [
    .macOS(.v11),
  ],

  products: [
    .library(
      name: "RealMP",
      targets: ["RealMP"]
    ),
  ],

  dependencies: [
    .package(
      name: "Real",
      path: "../Real"
    ),
    .package(
      name: "GnuMPFR",
      path: "../GnuMPFR"
    ),
  ],

  targets: [
    .target(
      name: "RealMP",
      dependencies: ["Real", "GnuMPFR"]
    ),
    .testTarget(
      name: "RealMPTests",
      dependencies: ["RealMP", .product(name: "RealTestSupport", package: "Real")]
    ),
  ]
)
