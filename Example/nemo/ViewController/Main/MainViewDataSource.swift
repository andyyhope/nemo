//
//  MainViewDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

extension MainViewDataSource {
    enum Section: Int {
        case main
    }
}

final class MainViewDataSource {
    
    // MARK: - Properties
    
    let entity: MainEntity?
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
    
    func section(forIndex index: Int) -> Section {
        if let section = Section(rawValue: index) {
            return section
        }
        else {
            fatalError("Invalid index passed in. Could not return `Section`")
        }
    }
    
    func sectionController(for indexPath: IndexPath) -> SectionController {
        return sectionControllers[indexPath.section]
    }
    
    func cellController(for indexPath: IndexPath) -> CellController {
        return sectionController(for: indexPath).cellControllers[indexPath.row]
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
        
    }
}
