//
//  SwitchCellController.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class SwitchCellController {
    
    // MARK: - Properties
    
    let entity: SwitchCellEntity
    let dataSource: SwitchCellDataSource
    
    
    // MARK: - Initializer
    
    init(entity: SwitchCellEntity) {
        self.dataSource = SwitchCellDataSource(entity: entity)
        self.entity = entity
    }
    
    
    // MARK: - Computed Properties
    
    var model: SwitchCellModel {
        return dataSource.model
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: SwitchFieldCell) {
        cell.label.text = model.labelText
        cell.switch.isOn = model.defaultValue
    }
}
