//
//  ContentSectionControllerType.swift
//  nemo
//
//  Created by Andyy Hope on 4/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct ContentSectionController {
    let entity: ContentSectionEntity
    let cellControllers: [ContentCellControllerType]
    let model: ContentSectionModel
    
    
    init(entity: ContentSectionEntity) {
        self.entity = entity
        self.cellControllers = self.entity.cellEntities
            .compactMap { ContentCellControllerType(cellEntity: $0) }
        self.model = ContentSectionModel(entity: entity)
    }
    
    func prepare(_ view: ContentSectionHeaderView) {
        view.headingLabel.text = model.titleLabelText
    }
}

