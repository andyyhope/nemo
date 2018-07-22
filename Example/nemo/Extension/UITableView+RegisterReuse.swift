//
//  TableViewCellLoadable.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    
    // MARK: - Register Views
    
    func register<T: UITableViewCell>(_: T.Type)  where T: Reusable & NibLoadable{
        if let nib = T.nib {
            register(nib, forCellReuseIdentifier: T.reuseIdentifier)
        } else {
            register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
        }
    }
    
    func register<T: UITableViewHeaderFooterView>(_: T.Type) where T: Reusable {
        if let nib = T.nib {
            register(nib, forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
        }
        else {
            register(T.self, forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
        }
    }
    
    // MARK: - Dequeuing
    
    func dequeue<T: UITableViewCell>(for indexPath: IndexPath) -> T where T: Reusable {
        if let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T {
            return cell
        }
        else {
            fatalError("The dequeueReusableCell \(String(describing: T.self)) couldn't be loaded.")
        }
    }
    
    func dequeue<T: UITableViewHeaderFooterView>() -> T? where T: Reusable {
        if let view = dequeueReusableHeaderFooterView(withIdentifier: T.reuseIdentifier) as? T {
            return view
        }
        else {
            return nil
        }
    }
}

extension UICollectionView {
    
    // MARK: - Register
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: Reusable {
        if let nib = T.nib {
            register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
        }
        else {
            register(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
        }
    }
    
    func register<T: Reusable>(elementKind: String, _: T.Type) {
        if let nib = T.nib {
            register(nib, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: T.reuseIdentifier)
        }
        else {
            register(T.self, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: T.reuseIdentifier)
        }
    }
    
    // MARK: - Dequeuing
    
    func dequeue<T: UICollectionViewCell>(for indexPath: IndexPath) -> T where T: Reusable {
        if let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T {
            return cell
        }
        else {
            fatalError("The dequeueReusableCell \(String(describing: T.self)) couldn't be loaded.")
        }
    }
    
    func dequeue<T: UICollectionViewCell>(elementKind: String, for indexPath: IndexPath) -> T where T: Reusable {
        if let view = dequeueReusableSupplementaryView(ofKind: elementKind, withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T {
            return view
        }
        else {
            fatalError("The dequeueReusableSupplementaryView \(String(describing: T.self)) couldn't be loaded.")
        }
    }
}
