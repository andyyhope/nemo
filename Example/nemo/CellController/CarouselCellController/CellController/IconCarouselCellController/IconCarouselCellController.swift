//
//  IconCarouselCellController.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class IconCarouselCellController {
    
    // MARK: - Properties
    
    let model: IconCarouselCellModel
    let entity: IconCarouselCellEntity
    

    // MARK: - Initializer
    
    init(entity: IconCarouselCellEntity) {
        self.entity = entity
        self.model = IconCarouselCellModel(entity: entity)
    }

    
    // MARK: - Computed Properties
    
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: IconCarouselCell) {        
        prepareBindings(for: cell)
    }
    
    private func prepareBindings(for cell: IconCarouselCell) {
        
    }
}
