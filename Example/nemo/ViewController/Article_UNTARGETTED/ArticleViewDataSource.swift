//
//  ArticleViewDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 4/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

extension ArticleViewDataSource {
    typealias CellController = <#CellController#>
    typealias SectionController = <#SectionController#>
    
    enum Section: Int {
        case <#section#>
    }
}

final class ArticleViewDataSource {
    
    // MARK: - Properties
    
    let entity: ArticleEntity?
    var state: State
    var model: ArticleViewModel
    var cellControllers: [CellController]
    var sectionControllers: [SectionController]
    
    // MARK: - Initializer
    
    init() {
        self.state = .loading
        self.model = ArticleViewModel(entity: nil)
        self.entity = nil
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

extension ArticleViewDataSource: Requesting {
    
    enum Request {
        case <#request#>
    }
    
    // MARK: Request
    
    func request(_ request: Request) {
        state = .loading
        
        switch request {
        case .<#request#>:
            request<#Request#>()
        }
    
    }
    
    private func request<#Request#>() {
        
    }
}
