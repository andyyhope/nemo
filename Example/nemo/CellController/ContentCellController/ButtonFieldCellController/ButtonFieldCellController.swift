//
//  ButtonFieldCellController.swift
//  nemo
//
//  Created by Andyy Hope on 12/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class ButtonFieldCellController {
    
    // MARK: - Properties
    
    let dataSource: ButtonFieldCellDataSource
    
    
    // MARK: - Initializer
    
    init(entity: ButtonFieldCellEntity) {
        self.dataSource = ButtonFieldCellDataSource(entity: entity)
    }
    
    
    // MARK: - Computed Properties
    
    var model: ButtonFieldCellModel {
        return dataSource.model
    }
    
    var entity: ButtonFieldCellEntity {
        return dataSource.entity
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: ButtonFieldCell) {
        cell.button.setTitle(model.buttonTitleText, for: .normal)
        
//        prepareBindings(for: cell)
    }
    
//    private func prepareBindings(for cell: ButtonFieldCell) {
//        
//    }
}
