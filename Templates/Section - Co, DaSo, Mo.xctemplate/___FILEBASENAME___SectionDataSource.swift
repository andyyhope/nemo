//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: StateManageable {
    
    // MARK: - Properties
    
    let ___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___
    var model: ___VARIABLE_sectionName:identifier___CellModel
    var state: State
    
    
    // MARK: - Initializer
    
    init(___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___) {
        self.___VARIABLE_entityName:identifier___ = ___VARIABLE_entityName:identifier___
    }
    
    
    // MARK: - Computered Properties
    
    
}

extension ___FILEBASENAMEASIDENTIFIER___: Requesting {
    
    enum Request {
        case <#request#>
    }
    
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

