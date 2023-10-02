//
//  UIViewController+Extension.swift
//  Hype_NFT
//
//  Created by Jadië Oliveira on 02/10/23.
//

import Foundation
import UIKit

extension UIViewController {
    func dismissKeyBoard() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
