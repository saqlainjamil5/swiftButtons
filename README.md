# Swift Buttons

This repository contains three custom button implementations in UIKit, demonstrating different styles and animations for buttons.

## Table of Contents
- [Overview](#overview)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)

## Overview

### 1. **Toggle Button Color**
A button that toggles its background color between yellow and dark golden when pressed.

https://github.com/user-attachments/assets/bc47161a-a5da-405c-9713-c7cbf223e4a1

### 2. **Pressable Button Style**
Providing a pressed effect with a scale animation.

https://github.com/user-attachments/assets/46a7e0bc-610a-419b-bac8-9406d3fa9cd4


### 3. **Loading Button Style**
A button with a loading indicator (Activity Indicator).

https://github.com/user-attachments/assets/917afef9-1921-4ea6-a902-c74ad432e659

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/saqlainjamil5/swiftbutton.git
    ```
2. Open the project in Xcode:
    ```sh
    cd swiftbutton
    open swiftbutton.xcodeproj
    ```

## Usage

### 1. **Toggle Button Color**
The `ViewController` contains a button that toggles its color between yellow and dark golden.

```swift
import UIKit

class ViewController: UIViewController {
    private var buttonColor: UIColor = .yellow
    private let toggleButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupToggleButton()
    }

    private func setupToggleButton() {
        toggleButton.setTitle(" Press Me ", for: .normal)
        toggleButton.setTitleColor(.white, for: .normal)
        toggleButton.backgroundColor = buttonColor
        toggleButton.titleLabel?.font = .boldSystemFont(ofSize: 17)
        toggleButton.layer.cornerRadius = 15
        toggleButton.frame = CGRect(x: 50, y: 100, width: 300, height: 50)
        toggleButton.addTarget(self, action: #selector(toggleButtonPressed), for: .touchUpInside)

        view.addSubview(toggleButton)
    }

    @objc private func toggleButtonPressed() {
        buttonColor = (buttonColor == .yellow) ? UIColor(red: 184/255, green: 134/255, blue: 11/255, alpha: 1) : .yellow
        toggleButton.backgroundColor = buttonColor
    }
}
```
### 2. Pressable Button Style
The ViewController contains a button that provides a pressed effect with a scale animation.

```swift
import UIKit

class ViewController: UIViewController {
    private let pressableButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupPressableButton()
    }

    private func setupPressableButton() {
        pressableButton.setTitle(" Press Me ", for: .normal)
        pressableButton.setTitleColor(.white, for: .normal)
        pressableButton.backgroundColor = .red
        pressableButton.titleLabel?.font = .systemFont(ofSize: 17, weight: .bold)
        pressableButton.layer.cornerRadius = 8
        pressableButton.frame = CGRect(x: 50, y: 200, width: 300, height: 50)
        pressableButton.addTarget(self, action: #selector(pressableButtonPressed), for: .touchUpInside)
        pressableButton.addTarget(self, action: #selector(pressableButtonTouchDown), for: .touchDown)

        view.addSubview(pressableButton)
    }

    @objc private func pressableButtonPressed() {
        UIView.animate(withDuration: 0.3) {
            self.pressableButton.transform = .identity
            self.pressableButton.backgroundColor = .red
        }
    }

    @objc private func pressableButtonTouchDown() {
        UIView.animate(withDuration: 0.3) {
            self.pressableButton.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
            self.pressableButton.backgroundColor = .gray
        }
    }
}
```
### 3. Loading Button Style
The ViewController contains a button with a loading indicator (Activity Indicator).

```swift

import UIKit

class ViewController: UIViewController {
    private let loadingButton = UIButton()
    private let activityIndicator = UIActivityIndicatorView(style: .medium)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupLoadingButton()
    }

    private func setupLoadingButton() {
        activityIndicator.color = .white
        activityIndicator.startAnimating()

        loadingButton.setTitle("Loading...", for: .normal)
        loadingButton.setTitleColor(.
```
### Contributing
Contributions are welcome! Please fork the repository and submit a pull request.
