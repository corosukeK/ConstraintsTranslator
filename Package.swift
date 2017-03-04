import PackageDescription

let package = Package(
    name: "ConstraintsTranslator",
    dependencies: [
        .Package(url: "https://github.com/Carthage/Commandant",
                 majorVersion: 0),
        .Package(url: "https://github.com/tadija/AEXML",
                 majorVersion: 4),
    ]
)
