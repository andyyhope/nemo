//
//  UIColor+ColorFactory.swift
//  nemo
//
//  Created by Andyy Hope on 29/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func color(forColor string: String) -> UIColor {
        return ColorFactory(string: string).color
    }
    
    static var defaultBackgroundColor: UIColor {
        return .white
    }
}
