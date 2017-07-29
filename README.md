# VerticalProgressView
[![Version](https://img.shields.io/cocoapods/v/VerticalProgressView.svg?style=flat)](http://cocoapods.org/pods/VerticalProgressView)
[![License](https://img.shields.io/cocoapods/l/VerticalProgressView.svg?style=flat)](http://cocoapods.org/pods/VerticalProgressView)
[![Platform](https://img.shields.io/cocoapods/p/VerticalProgressView.svg?style=flat)](http://cocoapods.org/pods/VerticalProgressView)

## Description
A vertical progress view created from UIProgressView.

## Example Use

```swift
import VerticalProgressView

class ViewController: UIViewController {
    
    let verticalProgressView: VerticalProgressView = {
        let progressView = VerticalProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addVerticalProgressView()
        verticalProgressView.setProgress(0.7, animated: false)
    }
    
    private func addVerticalProgressView() {
        view.addSubview(verticalProgressView)
        verticalProgressView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        verticalProgressView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        verticalProgressView.widthAnchor.constraint(equalToConstant: 6).isActive = true
        verticalProgressView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7).isActive = true
    }
}
```

![ViewController](http://i.imgur.com/8PuTB5e.png)

Alternatively you can add a UIView and storyboard and set its class to VerticalProgressView, and play constraints there.

Moreover if you dont want to use AutoLayout, simply add it like:

```swift
override func viewDidLoad() {
        super.viewDidLoad()
        
        let verticalProgressView = VerticalProgressView(frame: CGRect(x: 30, y: 30, width: 6, height: 100))
        view.addSubview(verticalProgressView)
        verticalProgressView.setProgress(0.7, animated: false)
}
```

## Customization

```swift
// Make the progress view descending
verticalProgressView.isAscending = false  // Defaults to true

// Set progress image
verticalProgressView.progressImage = UIImage(named: "ProgressImage.png")

// Read progress
let progress = verticalProgressView.progress

// Set progress
verticalProgressView.setProgress(0.6, animated: true)   // Perform on main thread

// Set progress tint color
verticalProgressView.progressTintColor = .red

// Set progress view style
verticalProgressView.progressViewStyle = .bar

// Set track image
verticalProgressView.trackImage = UIImage(named: "TrackImage.png")

// Set track tint color
verticalProgressView.trackTintColor = .darkGray
```

## Installation

VerticalProgressView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "VerticalProgressView"
```

## Author

Muhammad Naeem Jawaid, naeemjawaid@gmail.com

## License

VerticalProgressView is available under the MIT license. See the LICENSE file for more info.
