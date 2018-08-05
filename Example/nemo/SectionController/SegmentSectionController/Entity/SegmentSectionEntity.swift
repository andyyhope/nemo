//
//  SegmentSectionEntity.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct SegmentSectionEntity {
    let optionEntities: [SegmentSectionOptionEntity]
    
    init?(json: JSON) {
        guard let entities = json["segments"] as? [JSON] else { return nil }
        
        self.optionEntities = entities
            .compactMap{ SegmentSectionOptionEntity(json: $0) }
        
        if self.optionEntities.count == 0 {
            return nil
        }
    }
}


