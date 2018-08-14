//
//  SegmentSectionDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

class SegmentSectionDataSource {
    let entity: SegmentSectionEntity
    let model: SegmentSectionModel
    let options: [SegmentSectionOption]
    
    private(set) var selectedIndex: Int = 0
    
    init(entity: SegmentSectionEntity) {
        self.entity = entity
        self.options = self.entity.optionEntities
            .compactMap { SegmentSectionOption(entity: $0) }
        self.model = SegmentSectionModel(
            entity: self.entity,
            titles: self.options.map { $0.entity.title })
    }
    
    var numberOfValues: Int {
        return options.count
    }
    
    var selectedIndexCellControllers: [ContentCellControllerType] {
        return options[selectedIndex].cellControllers
    }
    
    var allCellControllers: [ContentCellControllerType] {
        return options.flatMap { $0.cellControllers }
    }
    
    func updateSelectedIndex(_ index: Int) {
        self.selectedIndex = index
    }
}
