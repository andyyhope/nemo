//
//  DetailCellController.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class DetailCellController {
    
    // MARK: - Properties
    
    let model: DetailCellModel
    let entity: DetailCellEntity
    

    // MARK: - Initializer
    
    init(entity: DetailCellEntity) {
        self.entity = entity
        self.model = DetailCellModel(entity: entity)
    }

    
    // MARK: - Computed Properties
    
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: DetailCell) {
        prepareBindings(for: cell)
        cell.headingLabel.text = model.headingLabelText
        cell.headingLabel.font = model.headingLabelFont
        cell.detailLabel.text = model.detailLabelText
        cell.backgroundColor = model.backgroundColor
    }
    
    private func prepareBindings(for cell: DetailCell) {
        
    }
}
