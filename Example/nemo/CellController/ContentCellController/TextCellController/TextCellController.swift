//
//  TextCellController.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class TextCellController {
    
    // MARK: - Properties
    
    let model: TextCellModel
    let entity: TextCellEntity
    

    // MARK: - Initializer
    
    init(entity: TextCellEntity) {
        self.entity = entity
        self.model = TextCellModel(entity: entity)
    }

    
    // MARK: - Computed Properties
    
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: TextCell) {        
        prepareBindings(for: cell)
        cell.label.text = model.headingLabelText
        cell.backgroundColor = model.backgroundColor
    }
    
    private func prepareBindings(for cell: TextCell) {
        
    }
}
