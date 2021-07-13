// swift-tools-version:4.0

/*
 * Copyright 2018, Google LLC. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import PackageDescription

let package = Package(
  name: "kiosk-swift",
  dependencies: [
    .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.1.1"),
    .package(url: "https://github.com/kylef/Commander.git", from: "0.9.2"),
    .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.3.0"),
  ],
  targets: [
    .target(name: "kiosk-tool-swift",
            dependencies: [
              "SwiftGRPC",
              "SwiftProtobuf",
              "Commander",
            ],
	    path: "Sources/kiosk-tool-swift"),
    .target(name: "kiosk-server-swift",
            dependencies: [
              "SwiftGRPC",
              "SwiftProtobuf",
              "Commander",
            ],
	    path: "Sources/kiosk-server-swift")
  ])
