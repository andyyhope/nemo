//
//  SegmentSectionModel.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct SegmentSectionModel {
    
    let entity: SegmentSectionEntity
    let titles: [String]
    
    init(entity: SegmentSectionEntity, titles: [String]) {
        self.entity = entity
        self.titles = titles
    }
}
