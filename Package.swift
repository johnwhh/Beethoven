// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "Beethoven",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "Beethoven", targets: ["Beethoven-iOS"])
  ],
  dependencies: [
    .package(url: "https://github.com/johnwhh/Pitchy.git", branch: "master")
  ],
  targets: [
    .target(
        name: "Beethoven-iOS",
        dependencies: [
            .byNameItem(name: "Pitchy", condition: .none)
        ]
    )
  ]
)
