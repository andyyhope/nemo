//
//  UICollectionView+RegisterReuse.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit


extension UICollectionView {
    
    // MARK: - Register
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: NibLoadable {
        register(T.nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func register<T: UICollectionViewCell>(_: T.Type) {
        register(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func register<T: Reusable>(elementKind: String, _: T.Type) where T: NibLoadable {
        register(T.nib, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: T.reuseIdentifier)
    }
    
    func register<T: Reusable>(elementKind: String, _: T.Type) {
        register(T.self, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: T.reuseIdentifier)
    }
    
    // MARK: - Dequeuing
    
    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        if let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T {
            return cell
        }
        else {
            fatalError("The dequeueReusableCell \(String(describing: T.self)) couldn't be loaded.")
        }
    }
    
    func dequeueReusableView<T: UICollectionViewCell>(elementKind: String, for indexPath: IndexPath) -> T {
        if let view = dequeueReusableSupplementaryView(ofKind: elementKind, withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T {
            return view
        }
        else {
            fatalError("The dequeueReusableSupplementaryView \(String(describing: T.self)) couldn't be loaded.")
        }
    }
}

