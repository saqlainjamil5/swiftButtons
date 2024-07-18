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

### 2. **Pressable Button Style**
Providing a pressed effect with a scale animation.

### 3. **Loading Button Style**
A button with a loading indicator (Activity Indicator).

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
