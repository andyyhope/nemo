//
//  SegmentSectionControllerType.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct SegmentSectionControllerType {
    let entity: SegmentSectionEntity
    let cellControllers: [ContentCellControllerType]
    
    init(entity: SegmentSectionEntity) {
        self.entity = entity
        self.cellControllers = self.entity.cellEntities
            .compactMap { ContentCellControllerType(cellEntity: $0) }
    }
}
