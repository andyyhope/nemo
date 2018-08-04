//
//  CarouselSectionEntity.swift
//  nemo
//
//  Created by Andyy Hope on 4/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct CarouselSectionEntity {
    let cellEntities: [CarouselCellEntity]
    
    init?(json: JSON) {
        guard let entities = json["cell-entities"] as? [JSON] else { return nil }
        self.cellEntities = entities
            .compactMap{ CarouselCellEntity(json: $0) }
        
        if self.cellEntities.count == 0 {
            return nil
        }
    }
}
