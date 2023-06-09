// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Synchronization",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Synchronization",
			targets: ["GXCoreModule_SD_SynchronizationWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", revision: "63d2b45412060c871123a524ac6d9239b205962f"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", revision: "195f2873dc3ed7d924d9a72b86f629015eadef71"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", revision: "2850c07662d2291aeb37634ebb5c498d5ad0d6a4"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", revision: "4ca72491fdc6a8fd7fdab99ed70e324d3a206d3f")
	],
	targets: [
		.target(name: "GXCoreModule_SD_SynchronizationWrapper",
				dependencies: [
					"GXCoreModule_SD_Synchronization",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.tvOS, .watchOS, .iOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.tvOS, .watchOS, .iOS])),
					.product(name: "GXObjectsModel", package: "GXObjectsModel", condition: .when(platforms: [.tvOS, .watchOS, .iOS])),
					.product(name: "GXStandardClasses", package: "GXStandardClasses", condition: .when(platforms: [.tvOS, .watchOS, .iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Synchronization",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Synchronization-1.0.0-beta+20230609175617.xcframework.zip",
			checksum: "e49005025d37b6407403f3d05086aa8e7db70d4d412df31048a3d085c29c76b3"
		)
	]
)