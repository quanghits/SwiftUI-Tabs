//
//  Package.swift
//  SwiftUITabs
//
//  Created by TA MINH QUANG on 20/08/2022.
//

import PackageDescription


let package = Package(
    name: "SwiftUI-Tabs",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftUI-Tabs",
            targets: ["SwiftUI-Tabs"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftUI-Tabs",
            dependencies: [],
            path: "Sources"),
    ]
)
