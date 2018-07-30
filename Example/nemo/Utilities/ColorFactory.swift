//
//  ColorFactory.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

enum ColorFactory: String {
    case red
    case blue
    case green
    case black
    case white
    case clear
    
    var color: UIColor {
        switch self {
        case .red:
            return .red
        case .blue:
            return .blue
        case .green:
            return .green
        case .black:
            return .black
        case .white:
            return .white
        case .clear:
            return .clear
        }
    }
    
    init(string: String) {
        self = ColorFactory(rawValue: string) ?? .clear
    }
}

