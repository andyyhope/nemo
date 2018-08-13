//
//  CarouselCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct CarouselCellEntity {
    let backgroundColor: String?
    let entities: [CarouselCellType]
    
    init?(json: JSON) {
        guard
            let entities = json["cells"] as? [JSON]
            else { return nil }
        
        self.backgroundColor =  json["backgroundColor"] as? String
        self.entities = entities.compactMap { CarouselCellType(json: $0) }
    }
}

