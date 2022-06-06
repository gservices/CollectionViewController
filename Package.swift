// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "CollectionViewController",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "CollectionViewController",
            targets: ["CollectionViewController"]),
    ],
    
    dependencies: [],
    
    targets: [
        .target(
            name: "CollectionViewController",
            dependencies: []),
        .testTarget(
            name: "CollectionViewControllerTests",
            dependencies: ["CollectionViewController"]),
    ]
)
