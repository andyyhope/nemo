//
//  MainViewDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

extension MainViewDataSource {

}

final class MainViewDataSource {
    
    // MARK: - Properties
    
    var entity: MainEntity?
    var state: State
    var model: MainViewModel
    private var sectionControllers: [SectionControllerType]
    
    // MARK: - Initializer
    
    init() {
        self.state = .loading
        self.model = MainViewModel(entity: nil)
        self.entity = nil
        self.sectionControllers = []
    }
    
    
    // MARK: - Data
    
    var numberOfSections: Int {
        return sectionControllers.count
    }
    
    func numberOfRows(inSection section: Int) -> Int {
        switch sectionControllers[section] {
        case .content(let sectionController):
            return sectionController.cellControllers.count
        case .segment(let sectionController):
            return sectionController.dataSource.selectedIndexCellControllers.count
        case .form(let sectionController):
            return sectionController.cellControllers.count
        }
    }
    
    func sectionController(forIndex index: Int) -> SectionControllerType {
        return sectionControllers[index]
    }
    
    func cellControllers(forIndex index: Int) -> [ContentCellControllerType] {
        switch sectionController(forIndex: index) {
        case .content(let sectionController):
            return sectionController.cellControllers
        case .form(let sectionController):
            return sectionController.cellControllers
        case .segment(let sectionController):
            return sectionController.selectedIndexCellControllers
        }
    }
    
    func cellController(for indexPath: IndexPath) -> ContentCellControllerType {
        return cellControllers(forIndex: indexPath.section)[indexPath.row]
    }
    
    private func updateEntity(_ entity: MainEntity) {
        self.entity = entity
        self.sectionControllers = entity.sections
            .compactMap { SectionControllerType(sectionEntity: $0) }
    }
}

// MARK: - Requesting

extension MainViewDataSource: Requesting {
    
    enum Request {
        case initial
    }
    
    // MARK: Request
    
    func request(_ request: Request, completion: @escaping CompletionClosure) {
        state = .loading
        
        switch request {
        case .initial:
            requestInitial(completion)
        }
    }
    
    private func requestInitial(_ completion: @escaping CompletionClosure) {
        switch Requester.request(.main) {
        case .success(let json):
            if let entity = MainEntity(json: json) {
                updateEntity(entity)
                state = .completed
            }
            else {
                state = .failed(.generic)
            }
        case .failure(let error):
            state = .failed(.unknown(error))
        }
        completion(state)
    }
}
