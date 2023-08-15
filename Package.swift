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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.1.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.1.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.1.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", exact: "1.1.0")
	],
	targets: [
		.target(name: "GXCoreModule_SD_SynchronizationWrapper",
				dependencies: [
					"GXCoreModule_SD_Synchronization",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.watchOS, .tvOS, .iOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.watchOS, .tvOS, .iOS])),
					.product(name: "GXObjectsModel", package: "GXObjectsModel", condition: .when(platforms: [.watchOS, .tvOS, .iOS])),
					.product(name: "GXStandardClasses", package: "GXStandardClasses", condition: .when(platforms: [.watchOS, .tvOS, .iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Synchronization",
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_SD_Synchronization-1.1.0.xcframework.zip",
			checksum: "c47ac48cf5e9427b2759f9db515828adb2fb9b0f79907d535899b7c6e668261a"
		)
	]
)