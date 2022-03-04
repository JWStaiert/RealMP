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
      name: "LibDFP",
      path: "../MP/LibDFP"
    ),
  ],

  targets: [
    .target(
      name: "RealMP",
      dependencies: ["Real", "LibDFP"]
    ),
    .testTarget(
      name: "RealMPTests",
      dependencies: ["RealMP"]
    ),
  ],

  swiftLanguageVersions: [.v5],

  cLanguageStandard: .c17,

  cxxLanguageStandard: .cxx17
)
