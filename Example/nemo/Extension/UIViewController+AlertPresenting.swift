//
//  ErrorAlerting.swift
//  nemo
//
//  Created by Andyy Hope on 29/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func presentError(withMessage message: String) {
        presentAlert(withTitle: "Error", message: message)
    }
    
    func presentSuccess(withMessage message: String) {
        presentAlert(withTitle: "Success", message: message)
    }
    
    func presentAlert(withTitle title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            alertController.dismiss(animated: true, completion: nil)
        }
    }
}
