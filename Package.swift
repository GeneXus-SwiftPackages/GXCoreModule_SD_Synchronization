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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.2.0-beta.22")
	],
	targets: [
		.target(name: "GXCoreModule_SD_SynchronizationWrapper",
				dependencies: [
					"GXCoreModule_SD_Synchronization",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Synchronization",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Synchronization-1.2.0-beta.22.xcframework.zip",
			checksum: "14c34fe50f0f4d3db354ae00d325d284add0bb763f3974ee40ff196b6e15a7a7"
		)
	]
)