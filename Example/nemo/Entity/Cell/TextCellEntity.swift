//
//  TextCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct TextCellEntity {
    let backgroundColor: String
    let text: String
    
    init?(json: JSON) {
        guard
            let text = json["text"] as? String,
            let backgroundColor = json["backgroundColor"] as? String
            else { return nil }
        
        self.text = text
        self.backgroundColor = backgroundColor
    }
}
