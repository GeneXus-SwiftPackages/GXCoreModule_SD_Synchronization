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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.0.0-beta.20230627202653"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.0.0-beta.20230627202653"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.0.0-beta.20230627202653"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", exact: "1.0.0-beta.20230627202653")
	],
	targets: [
		.target(name: "GXCoreModule_SD_SynchronizationWrapper",
				dependencies: [
					"GXCoreModule_SD_Synchronization",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.tvOS, .iOS, .watchOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.tvOS, .iOS, .watchOS])),
					.product(name: "GXObjectsModel", package: "GXObjectsModel", condition: .when(platforms: [.tvOS, .iOS, .watchOS])),
					.product(name: "GXStandardClasses", package: "GXStandardClasses", condition: .when(platforms: [.tvOS, .iOS, .watchOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Synchronization",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Synchronization-1.0.0-beta.20230627202653.xcframework.zip",
			checksum: "b81e226e4ff8d1eba104f8d4ba4495a7cc4b756d63048c55038a912a1e491a72"
		)
	]
)