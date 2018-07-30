//
//  ErrorAlerting.swift
//  nemo
//
//  Created by Andyy Hope on 29/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

protocol ErrorPresenting {
    func presentError(withMessage: String)
}

extension ErrorPresenting where Self: UIViewController {
    func presentError(withMessage message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
    }
}
