//
//  NibLoadable.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

protocol NibLoadable: class {
    
    static var nib: UINib { get }
}

extension NibLoadable {
    
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: Bundle(for: self))
    }
}

extension NibLoadable where Self: UIView {
    
    static func loadNib() -> Self {
        if let view = nib.instantiate(withOwner: nil, options: nil).first as? Self {
            return view
        }
        else {
            fatalError("The nib \(nib) expected its root view to be of type \(String(describing: self))")
        }
    }
}
