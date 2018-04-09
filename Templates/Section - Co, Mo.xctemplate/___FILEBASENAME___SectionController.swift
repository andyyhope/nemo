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
    
    let model: ___VARIABLE_sectionName:identifier___SectionModel
    let controllers: [<#CellController#>]
    let ___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___
    

    // MARK: - Initializer
    
    init(___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___) {
        self.___VARIABLE_entityName:identifier___ = ___VARIABLE_entityName:identifier___
        self.model = ___VARIABLE_sectionName:identifier___SectionModel(___VARIABLE_entityName:identifier___: ___VARIABLE_entityName:identifier___)
        self.controllers = ___VARIABLE_entityName:identifier___.<#items#>.map { <#CellController#>(<#entity#>: $0) }
    }

    
    // MARK: - Computed Properties
    
    
    
    
    // MARK: - Preparation
    
    func prepare(_ section: ___VARIABLE_sectionName:identifier___Section) {
        prepareBindings(for: section)
    }
    
    private func prepareBindings(for section: ___VARIABLE_sectionName:identifier___Section) {
        
    }
}
