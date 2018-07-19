//
//  CellController.swift
//  nemo
//
//  Created by Andyy Hope on 1/4/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

struct CellController {
    let entity: Engineer
    let dataSource: CellControllerDataSource
    
    // MARK: Init
    
    init(entity: Engineer) {
        self.entity = entity
        self.dataSource = CellControllerDataSource(entity: entity)
    }
    
    // MARK: Computed properties
    
    var model: CellControllerModel {
        return dataSource.model
    }
}

struct CellControllerDataSource {
    let entity: Engineer
    let model: CellControllerModel
    
    // MARK: Init
    
    init(entity: Engineer) {
        self.entity = entity
        self.model = CellControllerModel(entity: entity)
    }
}

struct CellControllerModel {
    let entity: Engineer
    
    // MARK: Init
    
    init(entity: Engineer) {
        self.entity = entity
    }
    
    // MARK: Computed properties
    
    var name: String {
        return "\(entity.firstName) \(entity.secondName)"
    }
    
    var color: UIColor {
        switch entity.language {
        case .swift:
            return .orange
        case .javascript:
            return .blue
        }
    }
}
