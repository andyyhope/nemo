//
//  CarouselCellController.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class CarouselCellController {
    
    // MARK: - Properties
    
    let dataSource: CarouselCellDataSource
    
    
    // MARK: - Initializer
    
    init(entity: CarouselCellEntity) {
        self.dataSource = CarouselCellDataSource(entity: entity)
    }
    
    
    // MARK: - Computed Properties
    
    var model: CarouselCellModel {
        return dataSource.model
    }
    
    var entity: CarouselCellEntity {
        return dataSource.entity
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: CarouselCell) {
        prepareBindings(for: cell)
        cell.collectionView.backgroundColor = model.backgroundColor
    }
    
    private func prepareBindings(for cell: CarouselCell) {
        
    }
}
