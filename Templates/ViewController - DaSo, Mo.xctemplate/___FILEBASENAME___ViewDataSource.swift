//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

extension ___FILEBASENAMEASIDENTIFIER___ {
    typealias CellController = <#CellController#>
    typealias SectionController = <#SectionController#>
    
    enum Section: Int {
        case <#section#>
    }
}

final class ___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - Properties
    
    let ___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___?
    var state: State
    var model: ___VARIABLE_sceneName:identifier___ViewModel
    var cellControllers: [CellController]
    var sectionControllers: [SectionController]
    
    // MARK: - Initializer
    
    init() {
        self.state = .loading
        self.model = ___VARIABLE_sceneName:identifier___ViewModel(___VARIABLE_entityName:identifier___: nil)
        self.___VARIABLE_entityName:identifier___ = nil
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

extension ___FILEBASENAMEASIDENTIFIER___: Requesting {
    
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
