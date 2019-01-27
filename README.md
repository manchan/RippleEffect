# RippleEffect

[![Platform](http://img.shields.io/badge/platform-iOS.svg?style=flat
)](https://developer.apple.com/iphone/index.action)
[![Language](http://img.shields.io/badge/Language-Swift-pink.svg?style=flat
)](https://developer.apple.com/swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-orange.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Version](https://img.shields.io/cocoapods/v/RippleEffect.svg?style=flat)](http://cocoapods.org/pods/RippleEffect)
[![License](https://img.shields.io/cocoapods/l/RippleEffect.svg?style=flat)](http://cocoapods.org/pods/RippleEffect)

![](./SampleImage/sample.gif)


You can use Material Design ([Google Material Design)](https://material.io/design/introduction/)) “ink ripple” interaction effect written in iOS swift.  

Please feel free to make pull requests.

## Features

- [x] Ripple effect with box size
- [x] Ripple animation
- [x] Highly customizable
- [x] By supporting @IBInspectable, the class properties can be exposed in the Interface Builder, and you can edit these properties in realtime
- [x] MKButton
- [x] MKCollectionViewCell
- [x] Support Swift4.2

## Installation

#### CocoaPods

RippleEffect is available through [CocoaPods](http://cocoapods.org). If you have cocoapods 1.5.3 or greater, you can install
it, simply add the following line to your Podfile:
    pod "RippleEffect"
    
#### Carthage

If you’re using [Carthage](https://github.com/Carthage/Carthage), simply add
RippleEffect to your `Cartfile`:
```
github "manchan/RippleEffect"
```
Make sure to add `RippleEffect.framework` to "Linked Frameworks and Libraries" and "copy-frameworks" Build Phases.

#### Manually

Add the [RippleEffect](./RippleEffect) directory to your project.
## Usage In Swift
To run the example project, clone the repo, and run `pod install` from the Example directory first.
If you install from pod, you have to write `import RippleEffect`.
If you want to apply ripple effect for UIButton

```swift
  let button = MKButton(frame: CGRect(x: 10, y: 10, width: 100, height: 35))
  button.maskEnabled = true
  button.rippleLayerColor = .orange
```

## Requirements

- Xcode 10.0 or greater
- iOS 10.0 or greater

## Author

Yuichi Matsuoka, anything12new14@gmail.com

## License
RippleEffect is available under the MIT license. See the LICENSE file for more info.
