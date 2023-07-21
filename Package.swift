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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.0.0-beta.20230721123914"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.0.0-beta.20230721123914"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.0.0-beta.20230721123914"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", exact: "1.0.0-beta.20230721123914")
	],
	targets: [
		.target(name: "GXCoreModule_SD_SynchronizationWrapper",
				dependencies: [
					"GXCoreModule_SD_Synchronization",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.watchOS, .iOS, .tvOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.watchOS, .iOS, .tvOS])),
					.product(name: "GXObjectsModel", package: "GXObjectsModel", condition: .when(platforms: [.watchOS, .iOS, .tvOS])),
					.product(name: "GXStandardClasses", package: "GXStandardClasses", condition: .when(platforms: [.watchOS, .iOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Synchronization",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Synchronization-1.0.0-beta.20230721123914.xcframework.zip",
			checksum: "3cb03ad4d97f343630bd888310bead4a1a93e0bfee405922659afc6fc3940585"
		)
	]
)