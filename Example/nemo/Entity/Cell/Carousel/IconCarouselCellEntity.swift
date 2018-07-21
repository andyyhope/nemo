//
//  IconCarouselCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct IconCarouselCellEntity {
    let text: String
    let iconName: String
    
    init?(json: JSON) {
        guard
            let text = json["text"] as? String,
            let iconName = json["icon"] as? String
            else { return nil }
        
        self.text = text
        self.iconName = iconName
    }
}
