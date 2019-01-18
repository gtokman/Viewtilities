# Viewtilities

**Viewtilities** is a collection of `UIView` utilities. It provides useful extensions that will speed up your workflow
when building your UI.

[![Version](https://img.shields.io/cocoapods/v/Viewtilities.svg?style=flat)](https://cocoapods.org/pods/Viewtilities)
[![License](https://img.shields.io/cocoapods/l/Viewtilities.svg?style=flat)](https://cocoapods.org/pods/Viewtilities)
[![Platform](https://img.shields.io/cocoapods/p/Viewtilities.svg?style=flat)](https://cocoapods.org/pods/Viewtilities)


## Examples
**Round Corners**
```
myView.round(corners: [.all], to: 10)
```

**Shadow**
```
myView.shadow(offset: .init(width: 0, height: 2), radius: 5, opacity: 0.5)
```
**Border**
```
myView.border(color: .black, width: 1)
```

## Installation

Viewtilities is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Viewtilities'
```
Then run pod install.

Don't forget to import `Viewtilities` in every file you'd like to use `Viewtilities`.

## Author

gtokman, hello@garytokman.me

## License

Viewtilities is available under the MIT license. See the LICENSE file for more info.
