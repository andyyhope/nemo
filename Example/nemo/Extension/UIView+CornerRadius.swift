//
//  UIView+CornerRadius.swift
//  nemo
//
//  Created by Andyy Hope on 12/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    static var defaultCornerRadius: CGFloat {
        return 16
    }
    
    var defaultCornerRadius: CGFloat {
        return UIView.defaultCornerRadius
    }
    
    func updateCornerRadii(_ radii: CGFloat? = nil) {
        layer.cornerRadius = radii ?? defaultCornerRadius
        clipsToBounds = true
    }
}
