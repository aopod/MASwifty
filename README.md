# MASwifty

Swifty way to use Masonry

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```swift
header.mas.makeConstraints { (make) in
    make.top.equalTo(self.mas.topLayoutGuideBottom)
    make.leading.trailing.equalToSuperview()
    make.height.equalTo(44)
}
```

```swift
label.mas.compressionPriority(.required, for: .horizontal, .vertical)
```

```swift
footerViews.mas.distribute(along: .horizontal, fixedSpacing: 10, leadSpacing: 10, tailSpacing: 10)
```

## Requirements

* iOS 8+
* Swift 4.2+

## Installation

MASwifty is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MASwifty'
```

## Author

aopod, aopodcom@gmail.com

## License

MASwifty is available under the MIT license. See the LICENSE file for more info.
