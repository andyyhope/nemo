//
//  TextFieldCellController.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class TextFieldCellController {
    
    // MARK: - Properties
    
    let entity: TextFieldCellEntity
    let dataSource: TextFieldCellDataSource
    
    
    // MARK: - Initializer
    
    init(entity: TextFieldCellEntity) {
        self.entity = entity
        self.dataSource = TextFieldCellDataSource(entity: entity)
    }
    
    
    // MARK: - Computed Properties
    
    var model: TextFieldCellModel {
        return dataSource.model
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: TextFieldCell) {
        cell.label.text = model.labelText
        cell.textField.placeholder = model.placeholderText
        prepareBindings(for: cell)
    }
    
    private func prepareBindings(for cell: TextFieldCell) {
        
    }
}
