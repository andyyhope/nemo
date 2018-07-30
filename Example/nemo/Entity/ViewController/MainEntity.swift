//
//  MainEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct MainEntity {
    let entities: [CellEntity]
    
    init?(json: JSON) {
        guard let entities = json["entities"] as? [JSON] else { return nil }
        
        self.entities = entities
            .compactMap{ CellEntity(json: $0) }
        
        if self.entities.count == 0 {
            return nil
        }
    }
}
