//
//  ViewController.swift
//  swiftButtons
//
//  Created by Saqlain Jamil on 18/07/2024.
//

import UIKit

class ViewController: UIViewController {
    private var buttonColor: UIColor = .yellow
    private let toggleButton = UIButton()
    private let pressableButton = UIButton()
    private let loadingButton = UIButton()
    private let activityIndicator = UIActivityIndicatorView(style: .medium)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupToggleButton()
        setupPressableButton()
        setupLoadingButton()
    }

    private func setupToggleButton() {
        toggleButton.setTitle(" Press Me ", for: .normal)
        toggleButton.setTitleColor(.black, for: .normal)
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

    private func setupLoadingButton() {
        activityIndicator.color = .white
        activityIndicator.startAnimating()

        loadingButton.setTitle("Loading...", for: .normal)
        loadingButton.setTitleColor(.white, for: .normal)
        loadingButton.backgroundColor = .blue
        loadingButton.titleLabel?.font = .systemFont(ofSize: 17, weight: .bold)
        loadingButton.layer.cornerRadius = 8
        loadingButton.frame = CGRect(x: 50, y: 300, width: 300, height: 50)
        loadingButton.addTarget(self, action: #selector(loadingButtonPressed), for: .touchUpInside)
        loadingButton.addTarget(self, action: #selector(loadingButtonTouchDown), for: .touchDown)

        loadingButton.addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.centerYAnchor.constraint(equalTo: loadingButton.centerYAnchor).isActive = true
        activityIndicator.leadingAnchor.constraint(equalTo: loadingButton.leadingAnchor, constant: 20).isActive = true

        view.addSubview(loadingButton)
    }

    @objc private func loadingButtonPressed() {
        UIView.animate(withDuration: 0.3) {
            self.loadingButton.transform = .identity
            self.loadingButton.backgroundColor = .blue
        }
    }

    @objc private func loadingButtonTouchDown() {
        UIView.animate(withDuration: 0.3) {
            self.loadingButton.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
            self.loadingButton.backgroundColor = .gray
        }
    }
}
