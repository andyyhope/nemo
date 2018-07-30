//
//  SectionController.swift
//  nemo
//
//  Created by Andyy Hope on 1/4/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct SectionController {
    let entity: Department
    let dataSource: SectionControllerDataSource
    
    // MARK: - Init
    
    init(entity: Department) {
        self.entity = entity
        self.dataSource = SectionControllerDataSource(entity: entity, sortOrder: .ascending)
    }
    
    // MARK: Computed properties
    
    var model: SectionControllerModel {
        return dataSource.model
    }
    
    var cellControllers: [CellController] {
        return dataSource.cellControllers
    }
}

class SectionControllerDataSource {
    let entity: Department
    let model: SectionControllerModel
    
    private var _cellControllers: [CellController]
    private var _sortOrder: SortOrder
    
    // MARK: - Init
    
    init(entity: Department, sortOrder: SortOrder) {
        self.entity = entity
        self.model = SectionControllerModel(entity: entity)
        
        self._sortOrder = sortOrder
        self._cellControllers = entity.engineers.map { CellController(entity: $0) }
    }
    
    // MARK: - Computed properties
    
    var cellControllers: [CellController] {
        return _cellControllers
    }
    
    // MARK: - Behaviour
    
    func sortCellControllers(by sortOrder: SortOrder) {
        self._sortOrder = sortOrder
        
        switch self._sortOrder {
        case .ascending:
            self._cellControllers.sort { $0.entity.firstName < $1.entity.firstName }
            
        case .descending:
            self._cellControllers.sort { $0.entity.firstName > $1.entity.firstName }
            
        case .ranking:
            self._cellControllers = [
                    self._cellControllers.filter { $0.entity.title == .senior },
                    self._cellControllers.filter { $0.entity.title == .junior },
                    self._cellControllers.filter { $0.entity.title == .intern },
                ]
                .flatMap { $0 }
        }
    }
    
    // Nested Types
    
    enum SortOrder {
        case ascending
        case descending
        case ranking
    }
}

struct SectionControllerModel {
    let entity: Department
    
    // MARK: - Init
    
    init(entity: Department) {
        self.entity = entity
    }
    
    // MARK: Computed properties
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        return dateFormatter.string(from: entity.date)
    }
}
