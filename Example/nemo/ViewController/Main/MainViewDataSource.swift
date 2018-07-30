//
//  MainViewDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

extension MainViewDataSource {
    
    
    enum SectionController {
        case content([CellController])
        case footer([CellController])
        
        static let count: Int = 2
        
        var index: Int {
            switch self {
            case .content:
                return 0
            case .footer:
                return 1
            }
        }
    }
}

final class MainViewDataSource {
    
    // MARK: - Properties
    
    var entity: MainEntity?
    var state: State
    var model: MainViewModel
    var cellControllers: [CellController]
    var sectionControllers: [SectionController]
    
    // MARK: - Initializer
    
    init() {
        self.state = .loading
        self.model = MainViewModel(entity: nil)
        self.entity = nil
        self.cellControllers = []
        self.sectionControllers = []
    }
    
    
    // MARK: - Data
    
    func sectionController(forIndex index: Int) -> SectionController {
        return sectionControllers[index]
    }
    
    func cellController(for indexPath: IndexPath) -> CellController {
        switch sectionController(forIndex: indexPath.section) {
        case .content(let cellControllers):
            return cellControllers[indexPath.row]
        case .footer(let cellControllers):
            return cellControllers[indexPath.row]
        }
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
                self.entity = entity
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
