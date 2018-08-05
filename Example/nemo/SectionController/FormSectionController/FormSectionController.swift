//
//  FormSectionController.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class FormSectionController {
    
    // MARK: - Properties
    
    let model: FormSectionModel
    let cellControllers: [ContentCellControllerType]
    let entity: FormSectionEntity
    

    // MARK: - Initializer
    
    init(entity: FormSectionEntity) {
        self.entity = entity
        self.model = FormSectionModel(entity: entity)
        self.cellControllers = entity.cellEntities
            .map { ContentCellControllerType(cellEntity: $0) }
    }
    
    // MARK: - Preparation
    
    func prepare(_ view: FormSectionHeaderView) {
        
    }
}
