//
//  UIViewController-functionality.swift
//  Basketball Score App
//
//  Created by Neenu on 16/06/24.
//

import Foundation
import UIKit

extension UIViewController {
    
    // MARK: - Adding UIAlert
    func showAlert(title: String, message: String, okActionTitle: String = "OK", okActionHandler: ((UIAlertAction) -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: okActionTitle, style: .default, handler: okActionHandler)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func showAlertWithActions(title: String, message: String, actions: [UIAlertAction]) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for action in actions {
            alertController.addAction(action)
        }
        
        present(alertController, animated: true, completion: nil)
    }
}
