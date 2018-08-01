//
//  CarouselCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct CarouselCellEntity {
    let backgroundColor: String
    let entities: [CarouselCellType]
    
    init?(json: JSON) {
        guard
            let backgroundColor = json["backgroundColor"] as? String,
            let entities = json["entities"] as? [JSON]
            else { return nil }
        
        self.backgroundColor = backgroundColor
        self.entities = entities.compactMap { CarouselCellType(json: $0) }
    }
}

