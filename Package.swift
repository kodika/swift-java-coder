// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "JavaCoder",
    products:[
        .library(
            name: "JavaCoder", 
            targets:["JavaCoder"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/kodika/java_swift.git", .branch("master")),
        .package(url: "https://github.com/kodika/swift-anycodable.git", .branch("master")),
    ],
    targets: [
        .target(name: "JavaCoder", dependencies: ["java_swift", "AnyCodable"], path: "Sources"),
    ],
    swiftLanguageVersions: [.v5]
)
