//
//  ViewController.swift
//  Bankey
//
//  Created by MacPro on 25/09/24.
//

import UIKit

final class LoginViewController: UIViewController {
    private let loginView = LoginView(frame: .zero)
    private let signInButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension LoginViewController {
    private func style() {
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.configuration = .filled()
        signInButton.configuration?.imagePadding = 8
        signInButton.setTitle("Sign In", for: [])
        signInButton.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
    }
    
    private func layout() {
        view.addSubview(loginView)
        view.addSubview(signInButton)
        
        // LoginView
        NSLayoutConstraint.activate([
            loginView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1),
        ])
        
        // Sign In Button
        NSLayoutConstraint.activate([
            signInButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
            signInButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
        ])
    }
}

// MARK: Actions
extension LoginViewController {
    @objc private func signInTapped() {
        
    }
}
