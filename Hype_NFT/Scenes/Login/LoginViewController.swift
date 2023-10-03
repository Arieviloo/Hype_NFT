//
//  ViewController.swift
//  Hype_NFT
//
//  Created by Jadië Oliveira on 22/08/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginView: LoginView?
    
    override func loadView() {
        loginView = LoginView()
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissKeyBoard()
        isEnabledLoginButton(false)
        loginView?.delegate(delegate: self)
        loginView?.configTextFielDelegate(delegate: self)
        view.backgroundColor = .orange
       
    }
    
    func validateTextFields() {
        if (loginView?.emailTextField.text ?? "").isValid(validType: .email) && (loginView?.passwordTextField.text ?? "").isValid(validType: .password) {
            isEnabledLoginButton(true)
        } else {
            isEnabledLoginButton(false)
        }
    }
    
    func isEnabledLoginButton(_ isEnabled: Bool) {
        if isEnabled {
            loginView?.loginButton.setTitleColor(.white, for: .normal)
            loginView?.loginButton.isEnabled = true
            loginView?.backgroundButtonLoginImage.alpha = 1
        } else {
            loginView?.loginButton.setTitleColor(.lightGray, for: .normal)
            loginView?.loginButton.isEnabled = false
            loginView?.backgroundButtonLoginImage.alpha = 0.4
        }
    }
    
    
}

extension LoginViewController: LoginViewProtocol {
    func tappedLoginButton() {
        print(#function, "deu bom")
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldNotValid(_ textField: UITextField) {
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.red.cgColor
    }
    
    func textFieldIsValid(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.white.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text?.isEmpty ?? false {
            textFieldNotValid(textField)
        } else {
            switch textField {
            case self.loginView?.emailTextField:
                if (loginView?.emailTextField.text ?? "").isValid(validType: .email) {
                    textFieldIsValid(textField)
                } else {
                    textFieldNotValid(textField)
                }
            case self.loginView?.passwordTextField:
                if (loginView?.passwordTextField.text ?? "").isValid(validType: .password) {
                    textFieldIsValid(textField)
                } else {
                    textFieldNotValid(textField)
                }
            default:
                break
            }
        }
        
        validateTextFields()
    }
}

