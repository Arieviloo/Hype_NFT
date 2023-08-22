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
        
        view.backgroundColor = .orange
    }


}

