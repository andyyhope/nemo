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
    private var cellControllers: [CellController]
    
    // MARK: - Initializer
    
    init() {
        self.state = .loading
        self.model = MainViewModel(entity: nil)
        self.entity = nil
        self.cellControllers = []
    }
    
    
    // MARK: - Data
    
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRows(inSection section: Int) -> Int {
        return cellControllers.count
//        guard entity != nil else { return 0 }
//        switch sectionController(forIndex: section) {
//        case .content(let cellControllers):
//            return cellControllers.count
//        case .footer(let cellControllers):
//            return cellControllers.count
//        }
    }
    
//    func sectionController(forIndex index: Int) -> SectionController {
//        return sectionControllers[index]
//    }
    
    func cellController(for indexPath: IndexPath) -> CellController {
        return cellControllers[indexPath.row]
//        switch sectionController(forIndex: indexPath.section) {
//        case .content(let cellControllers):
//            return cellControllers[indexPath.row]
//        case .footer(let cellControllers):
//            return cellControllers[indexPath.row]
//        }
    }
    
    private func updateEntity(_ entity: MainEntity) {
        self.entity = entity
        cellControllers = entity.entities
            .map { CellController(cellEntity: $0) } 
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
