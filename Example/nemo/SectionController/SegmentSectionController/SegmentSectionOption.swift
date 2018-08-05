//
//  SegmentSectionOption.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation


struct SegmentSectionOption {
    let entity: SegmentSectionOptionEntity
    let title: String
    let cellControllers: [ContentCellControllerType]
    
    init(entity: SegmentSectionOptionEntity) {
        self.entity = entity
        self.title = entity.title
        self.cellControllers = self.entity.cellEntities
            .compactMap { ContentCellControllerType(cellEntity: $0) }
    }
}
