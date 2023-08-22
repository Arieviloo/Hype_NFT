//
//  LoginView.swift
//  Hype_NFT
//
//  Created by Jadië Oliveira on 22/08/23.
//

import UIKit

class LoginView: UIView {
    
    lazy var backgroundImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "BGLogin")
        return $0
    }(UIImageView())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAddSubview()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupAddSubview() {
        addSubview(backgroundImage)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
