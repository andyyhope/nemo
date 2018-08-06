//
//  SwitchCellDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class SwitchCellDataSource {
    
    // MARK: - Properties
    
    let entity: SwitchCellEntity
    var model: SwitchCellModel
    
    
    // MARK: - Initializer
    
    init(entity: SwitchCellEntity) {
        self.entity = entity
        self.model = SwitchCellModel(entity: entity)
    }
    
    
    // MARK: - Computered Properties
    
    
}

