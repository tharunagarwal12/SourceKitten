import PackageDescription

let package = Package(
  name: "SourceKitten",
  targets: [
    Target(name: "SourceKittenFramework"),
    Target(name: "sourcekitten",
      dependencies: [.Target(name: "SourceKittenFramework")]),
  ],
  dependencies: [
    .Package(url: "https://github.com/Carthage/Commandant.git", versions: Version(0, 11, 3)..<Version(0, 11, .max)),
    .Package(url: "https://github.com/drmohundro/SWXMLHash.git", Version(3, 0, 4)),
    .Package(url: "https://github.com/jpsim/Yams.git", Version(0, 1, 5)),
    .Package(url: "https://github.com/norio-nomura/Clang_C.git", majorVersion: 1),
    .Package(url: "https://github.com/norio-nomura/SourceKit.git", majorVersion: 1),
    .Package(url: "https://github.com/sorbetto/swift-sass.git", Version(1, 0, 0)),
    .Package(url: "https://github.com/kylef/Stencil.git", Version(0, 7, 2)),
  ],
  exclude: [
    "Source/SourceKittenFramework/clang-c",
    "Source/SourceKittenFramework/sourcekitd.h",
    "Tests/SourceKittenFrameworkTests/Fixtures",
  ]
)
