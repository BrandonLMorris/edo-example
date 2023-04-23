# eDistantObject in Swift

A minimal example of using [eDistantObject](https://github.com/google/eDistantObject) in Swift.

## Installation

Clone the repository and run [`pod install`](https://guides.cocoapods.org/using/getting-started.html)

Open the generated `.xcworkspace` (_not_ `.xcproject`) to view the source and build with Xcode.

## Usage

1. Create a build output directory, for example `/tmp/edo-build`

1. Build the project with the following command:

```
xcodebuild -workspace edo-example.xcworkspace \
  -scheme edo-example \
  -derivedDataPath /tmp/edo-build
```

Now run `/tmp/edo-build/Build/Products/Debug/edo-example server` to start the eDO server.

In a separate terminal, run
`/tmp/edo-build/Build/Products/Debug/edo-example client 123` to call the `DoublingService` over eDistantObject.

