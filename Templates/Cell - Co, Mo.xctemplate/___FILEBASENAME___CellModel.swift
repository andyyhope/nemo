//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - Properties
    
    var state: ViewState
    private let ___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___
    
    
    // MARK: - Initializer
    
    init(___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___) {
        self.___VARIABLE_entityName:identifier___ = ___VARIABLE_entityName:identifier___
    }
    
    
    // MARK: - Computed Properties
    
    var headingLabelText: String {
        return ___VARIABLE_entityName:identifier___.<#name#>
    }
}

extension ___FILEBASENAMEASIDENTIFIER___: ViewStateManageable {
    enum ViewState {
        case <#state 1#>, <#state 2#>
    }
}
