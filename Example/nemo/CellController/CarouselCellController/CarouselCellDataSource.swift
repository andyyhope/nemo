//
//  CarouselCellDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class CarouselCellDataSource { //: StateManageable {
    
    // MARK: - Properties
    
    let entity: CarouselCellEntity
    var model: CarouselCellModel
    var cellControllers: [CarouselCellControllerType]
    
    // MARK: - Initializer
    
    init(entity: CarouselCellEntity) {
        self.entity = entity
        self.model = CarouselCellModel(entity: entity)
        self.cellControllers = entity.entities
            .map { CarouselCellControllerType(entity: $0) }
    }
    // MARK: - Computered Properties
    
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfCells(inSection section: Int) -> Int {
        return cellControllers.count
    }
    
    func cellController(for indexPath: IndexPath) -> CarouselCellControllerType {
        return cellControllers[indexPath.row]
    }
}
