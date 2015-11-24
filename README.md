# UIViewController-ODStatusBar

[![CI Status](http://img.shields.io/travis/Rogaven/UIViewController-ODStatusBar.svg?style=flat)](https://travis-ci.org/Rogaven/UIViewController-ODStatusBar)
[![Version](https://img.shields.io/cocoapods/v/UIViewController+ODStatusBar.svg?style=flat)](http://cocoapods.org/pods/UIViewController+ODStatusBar)
[![License](https://img.shields.io/cocoapods/l/UIViewController+ODStatusBar.svg?style=flat)](http://cocoapods.org/pods/UIViewController+ODStatusBar)
[![Platform](https://img.shields.io/cocoapods/p/UIViewController+ODStatusBar.svg?style=flat)](http://cocoapods.org/pods/UIViewController+ODStatusBar)

A utility class for managing iOS7+ status bar state.

## Usage

Set visibility:

```objective-c
[_viewController od_setStatusBarHidden:YES];
```

Set style:

```objective-c
[_viewController od_setStatusBarStyle:UIStatusBarStyleLightContent];
```

## Installation

UIViewController-ODStatusBar is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIViewController+ODStatusBar"
```

## Author

Alexey Nazaroff, alexx.nazaroff@gmail.com

## License

UIViewController-ODStatusBar is available under the MIT license. See the LICENSE file for more info.
