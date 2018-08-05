//
//  SegmentSectionEntity.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct SegmentSectionEntity {
    let cellEntities: [ContentCellEntity]
    
    init?(json: JSON) {
        guard let entities = json["cells"] as? [JSON] else { return nil }
        
        self.cellEntities = entities
            .compactMap{ ContentCellEntity(json: $0) }
        
        if self.cellEntities.count == 0 {
            return nil
        }
    }
}
