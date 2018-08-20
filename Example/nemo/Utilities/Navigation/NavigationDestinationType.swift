//
//  NavigationType.swift
//  nemo
//
//  Created by Andyy Hope on 13/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum NavigationDestinationType {
    
    case article(articleID: Int, title: String)
    case gallery(galleryID: Int, title: String)
}
