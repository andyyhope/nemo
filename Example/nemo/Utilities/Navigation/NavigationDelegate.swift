//
//  ContentCellControllerNavigationHandling.swift
//  nemo
//
//  Created by Andyy Hope on 13/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

protocol NavigationRequesting: class {
    var navigationDelegate: NavigationDelegate? { get set }
    func navigationWillBegin(sender: Any)
}

protocol NavigationDelegate: class {
    func navigate(to navigation: NavigationDestinationType)
}
