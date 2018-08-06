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
    
    var entity: MainEntity? {
        didSet {
            
        }
    }
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
        
        
//        return cellControllers.count
        
//        guard entity != nil else { return 0 }
//        switch sectionController(forIndex: section) {
//        case .content(let cellControllers):
//            return cellControllers.count
//        case .footer(let cellControllers):
//            return cellControllers.count
//        }
    }
    
    func sectionController(forIndex index: Int) -> SectionControllerType {
        return sectionControllers[index]
    }
    
//    func cellController(for indexPath: IndexPath) -> ContentCellControllerType {
//        return cellControllers[indexPath.row]
        
//        switch sectionController(forIndex: indexPath.section) {
//        case .content(let cellControllers):
//            return cellControllers[indexPath.row]
//        case .footer(let cellControllers):
//            return cellControllers[indexPath.row]
//        }
//    }
    
    private func updateEntity(_ entity: MainEntity) {
        self.entity = entity
        self.sectionControllers = entity.sections
            .compactMap { SectionControllerType(sectionEntity: $0) }
//        cellControllers = entity.entities
//            .map { ContentCellControllerType(cellEntity: $0) }
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
