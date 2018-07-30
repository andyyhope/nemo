//
//  ImageCellController.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class ImageCellController {
    
    // MARK: - Properties
    
    let model: ImageCellModel
    let entity: ImageCellEntity
    

    // MARK: - Initializer
    
    init(entity: ImageCellEntity) {
        self.entity = entity
        self.model = ImageCellModel(entity: entity)
    }

    
    // MARK: - Computed Properties
    
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: ImageCell) {        
        prepareBindings(for: cell)
        cell.coverImageView.image = model.image
        cell.backgroundColor = model.backgroundColor
    }
    
    private func prepareBindings(for cell: ImageCell) {
        
    }
}
