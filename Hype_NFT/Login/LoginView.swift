//
//  LoginView.swift
//  Hype_NFT
//
//  Created by Jadië Oliveira on 22/08/23.
//

import UIKit

class LoginView: UIView {
    
    lazy var backgroundImageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "BGLogin")
        return $0
    }(UIImageView())
    
    lazy var logoImageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "BFLogin")
        return $0
    }(UIImageView())
    
    lazy var titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Hype NFT"
        $0.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        $0.textColor = .white
        return $0
    }(UILabel())
    
    lazy var subtitleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Marketplace de NFTs acadamy"
        $0.font = UIFont.systemFont(ofSize: 14)
        $0.textColor = .white
        return $0
    }(UILabel())
    
    lazy var emailTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.keyboardType = .emailAddress
        $0.autocorrectionType = .no
        $0.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        $0.clipsToBounds = true
        $0.borderStyle = .roundedRect
        $0.layer.cornerRadius = 10
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.white.cgColor
        $0.textColor = .white
        $0.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)])
        
        return $0
    }(UITextField())
    
    lazy var passwordTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.keyboardType = .default
        $0.isSecureTextEntry = true
        $0.autocorrectionType = .no
        $0.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        $0.clipsToBounds = true
        $0.borderStyle = .roundedRect
        $0.layer.cornerRadius = 10
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.white.cgColor
        $0.textColor = .white
        $0.attributedPlaceholder = NSAttributedString(string: "Senha", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)
        ])
        return $0
    }(UITextField())
    
    lazy var recoverPasswordButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Recuperar senha", for: .normal)
        $0.setTitleColor(UIColor(red: 231/255, green: 48/255, blue: 214/255, alpha: 1.0), for: .normal)
        $0.addTarget(self, action: #selector(tappedRecoverPassordButton), for: .touchUpInside)
        return $0
    }(UIButton(type: .system))
    
    lazy var backgroundButtonLoginImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "gradient3")
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        $0.contentMode = .scaleToFill
        return $0
    }(UIImageView())

    lazy var loginButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Entrar", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        $0.titleLabel?.textAlignment = .center
        $0.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return $0
    }(UIButton(type: .system))
    
    lazy var lineView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
        return $0
    }(UIView())
    
    lazy var metataskLoginButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        $0.layer.borderColor = UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1.0).cgColor
        $0.layer.borderWidth = 2
        return $0
    }(UIButton())
    
    lazy var iconMetataskLoginButton: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "logo")
        return $0
    }(UIImageView())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configSubview()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSubview() {
        addSubview(backgroundImageView)
        addSubview(logoImageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(recoverPasswordButton)
        addSubview(backgroundButtonLoginImage)
        addSubview(loginButton)
        addSubview(lineView)
        addSubview(metataskLoginButton)
        metataskLoginButton.addSubview(iconMetataskLoginButton)
    }
    
    @objc func tappedRecoverPassordButton() {
        print("\(#function) Recuperar senha")
    }
    
    @objc func tappedLoginButton() {
        print("\(#function) Recuperar senha")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            subtitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 20),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 8),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            recoverPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 5),
            recoverPasswordButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            
            backgroundButtonLoginImage.topAnchor.constraint(equalTo: recoverPasswordButton.bottomAnchor, constant: 20),
            backgroundButtonLoginImage.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            backgroundButtonLoginImage.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            backgroundButtonLoginImage.heightAnchor.constraint(equalToConstant: 40),
            
            loginButton.topAnchor.constraint(equalTo: backgroundButtonLoginImage.topAnchor),
            loginButton.leadingAnchor.constraint(equalTo: backgroundButtonLoginImage.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: backgroundButtonLoginImage.trailingAnchor),
            loginButton.heightAnchor.constraint(equalTo: backgroundButtonLoginImage.heightAnchor),
            loginButton.bottomAnchor.constraint(equalTo: backgroundButtonLoginImage.bottomAnchor),
            
            lineView.topAnchor.constraint(equalTo: backgroundButtonLoginImage.bottomAnchor, constant: 40),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            lineView.heightAnchor.constraint(equalToConstant: 0.5),
            
            metataskLoginButton.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 40),
            metataskLoginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            metataskLoginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            metataskLoginButton.heightAnchor.constraint(equalTo: loginButton.heightAnchor),
            
            iconMetataskLoginButton.leadingAnchor.constraint(equalTo: metataskLoginButton.leadingAnchor, constant: 50),
            iconMetataskLoginButton.heightAnchor.constraint(equalToConstant: 20),
            iconMetataskLoginButton.widthAnchor.constraint(equalToConstant: 20),
            iconMetataskLoginButton.centerYAnchor.constraint(equalTo: metataskLoginButton.centerYAnchor)
        ])
    }
}
