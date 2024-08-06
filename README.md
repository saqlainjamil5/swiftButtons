# Edit User Data App

This repository contains an iOS application demonstrating a simple user data management interface using UserDefaults. The app allows users to edit and save their profile information, which is then displayed on the main screen.


## Table of Contents
- [Overview](#overview)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)

## Overview

### 1. **Home Screen**
The Home screen displays the user's profile information, which can be edited by navigating to the Edit screen.

<img width="429" alt="Screenshot 2024-08-06 at 10 10 36 AM" src="https://github.com/user-attachments/assets/406d9ad2-c800-4b46-9ce4-c4f2d01b4746">


### 2. **Edit Screen**
A screen where users can edit their profile information, such as name, email, phone number, and additional details. Once the changes are saved, the user is navigated back to the main screen with the updated information.

<img width="429" alt="Screenshot 2024-08-06 at 10 11 30 AM" src="https://github.com/user-attachments/assets/29c7fd83-d6dc-4c91-93f6-0cb6d158651e">



## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/saqlainjamil5/edituserdataapp.git
    ```
2. Open the project in Xcode:
    ```sh
    cd edituserdataapp
    open edituserdataapp.xcodeproj
    ```

## Usage

### 1. **Home Screen**
The MainVC displays the user's profile information:

```swift
iimport UIKit

class MainVC: UIViewController {
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var userDetailsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadUserData()
    }

    private func loadUserData() {
        let defaults = UserDefaults.standard

        firstNameLabel.text = defaults.string(forKey: "firstName")
        emailLabel.text = defaults.string(forKey: "email")
        phoneLabel.text = defaults.string(forKey: "phone")
        userDetailsLabel.text = defaults.string(forKey: "userDetails")
    }
}

```
### 2. Edit Screen
The EditVC allows the user to edit and save profile information:

```swift
import UIKit

class EditVC: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var userDetailsTextField: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadUserData()
    }

    private func loadUserData() {
        let userData = fetchUserData()
        populateFields(with: userData)
    }

    private func fetchUserData() -> [String: String?] {
        let defaults = UserDefaults.standard

        return [
            "firstName": defaults.string(forKey: "firstName"),
            "email": defaults.string(forKey: "email"),
            "phone": defaults.string(forKey: "phone"),
            "userDetails": defaults.string(forKey: "userDetails")
        ]
    }

    private func populateFields(with userData: [String: String?]) {
        firstNameTextField.text = userData["firstName"] ?? ""
        emailTextField.text = userData["email"] ?? ""
        phoneTextField.text = userData["phone"] ?? ""
        userDetailsTextField.text = userData["userDetails"] ?? ""
    }

    private func saveUserData() {
        let defaults = UserDefaults.standard

        defaults.set(firstNameTextField.text, forKey: "firstName")
        defaults.set(emailTextField.text, forKey: "email")
        defaults.set(phoneTextField.text, forKey: "phone")
        defaults.set(userDetailsTextField.text, forKey: "userDetails")
    }

    @IBAction func saveProfile(_ sender: UIButton) {
        saveUserData()
        navigateBack()
    }

    private func navigateBack() {
        self.navigationController?.popViewController(animated: true)
    }
}

```

### Contributing
Contributions are welcome! Please fork the repository and submit a pull request.
