// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "swift-eosio",
    products: [
        .library(name: "EOSIO", targets: ["EOSIO"]),
    ],
    dependencies: [
	.package(url: "https://github.com/idivljak-htec/secp256k1", .branch("master")),

        .package(url: "https://github.com/jnordberg/swift-query-string-coder.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "EOSIO",
            dependencies: ["secp256k1V2", "CCrypto", "QueryStringCoder"]
        ),
        .target(
            name: "CCrypto"
        ),
        .testTarget(
            name: "EOSIOTests",
            dependencies: ["EOSIO"]
        ),
    ]
)
