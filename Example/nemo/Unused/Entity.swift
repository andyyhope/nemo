//
//  Entity.swift
//  nemo
//
//  Created by Andyy Hope on 1/4/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

struct Company {
    let name: String
    let location: String
    let color: UIColor
    let departments: [Department]
}

struct Department {
    let date: Date
    let language: Language
    let engineers: [Engineer]
    
    // MARK: - Init
    
    init(date: Date, language: Language, engineers: [Engineer]) {
        self.date = date
        self.language = language
        self.engineers = engineers
    }
}

struct Engineer {
    let firstName: String
    let secondName: String
    let age: Int
    let language: Language
    let title: Title
}

enum Title {
    case senior
    case junior
    case intern
}

enum Language {
    case swift
    case javascript
}
