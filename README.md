# Viewtilities

**Viewtilities** is a collection of `UIView` utilities. It provides useful extensions that will speed up your workflow
when building your UI.

[![Version](https://img.shields.io/cocoapods/v/Viewtilities.svg?style=flat)](https://cocoapods.org/pods/Viewtilities)
[![License](https://img.shields.io/cocoapods/l/Viewtilities.svg?style=flat)](https://cocoapods.org/pods/Viewtilities)
[![Platform](https://img.shields.io/cocoapods/p/Viewtilities.svg?style=flat)](https://cocoapods.org/pods/Viewtilities)

## Contents
- [Installation](#installation)
- [UIView](#view-examples)
    - [Round Corners](#round-corners)
    - [Shadow](#shadow)    
    - [Border](#border)        
    - [Chaining](#chaining)
- [Custom Views](#custom-view-examples)
    - [BaseView](#baseview)
    - [ModifiableView](#modifiableview)
- [UIViewControllers](#view-controller-examples)


## View Examples

#### Round Corners

```swift
myView.add(
    .cornerRadius(.custom(corners: [.all], radius: 10))
)
```
<p align="center">
<img width="174" alt="round" src="https://user-images.githubusercontent.com/12258850/51486857-cd08eb80-1d6f-11e9-9f52-992a57acf8dc.png">
</p>

#### Shadow

```swift
myView.add(
    .shadow(.custom(offset: .init(width: 0, height: 2), radius: 5, opacity: 0.25, color: .black))
)
```
<p align="center">
<img width="168" alt="shadow" src="https://user-images.githubusercontent.com/12258850/51486858-cd08eb80-1d6f-11e9-8ed5-c1d12968896e.png">
</p>

#### Border

```swift
myView.add(
    .border(.custom(color: .black, width: 1))
)
```
<p align="center">
<img width="189" alt="border" src="https://user-images.githubusercontent.com/12258850/51486856-cc705500-1d6f-11e9-8de9-50206e280c46.png">
</p>

#### Chaining

```swift
myView.add(
    .cornerRadius(.custom(corners: [.all], radius: 10)),
    .shadow(.custom(offset: .init(width: 0, height: 2), radius: 5, opacity: 0.25, color: .black)),
    .border(.default)
)
```
<p align="center">
<img width="165" alt="all" src="https://user-images.githubusercontent.com/12258850/51486855-cc705500-1d6f-11e9-8105-4069065b6c64.png">
</p>

## View Controller Examples

#### Coming soon

## Custom View Examples

#### BaseView - Coming Soon

#### ModifiableView - Coming Soon

## Installation

Viewtilities is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Viewtilities'
```
Then run pod install.

Don't forget to import `Viewtilities` in every file you'd like to use `Viewtilities`.


## Author

[![Twitter Follow](https://img.shields.io/twitter/follow/bestgaryever.svg?style=social)](https://twitter.com/bestgaryever)

[![Twitter Follow](https://img.shields.io/github/followers/gtokman.svg?style=social&label=Follow)](https://github.com/gtokman)

## License

Viewtilities is available under the MIT license. See the LICENSE file for more info.
