//
//  SwitchCellDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class SwitchFieldCellDataSource {
    
    // MARK: - Properties
    
    let entity: SwitchFieldCellEntity
    var model: SwitchFieldCellModel
    
    
    // MARK: - Initializer
    
    init(entity: SwitchFieldCellEntity) {
        self.entity = entity
        self.model = SwitchFieldCellModel(entity: entity)
    }
    
    
    // MARK: - Computered Properties

    var property: String {
        return entity.property
    }
}

