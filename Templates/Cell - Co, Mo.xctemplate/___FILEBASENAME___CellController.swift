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
    
    let model: ___VARIABLE_cellName:identifier___CellModel
    let ___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___
    

    // MARK: - Initializer
    
    init(___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___) {
        self.___VARIABLE_entityName:identifier___ = ___VARIABLE_entityName:identifier___
        self.model = ___VARIABLE_cellName:identifier___CellModel(___VARIABLE_entityName:identifier___: ___VARIABLE_entityName:identifier___)
    }

    
    // MARK: - Computed Properties
    
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: ___VARIABLE_cellName:identifier___Cell) {
        cell.headingLabel.text = model.headingLabelText
        
        prepareBindings(for: cell)
    }
    
    private func prepareBindings(for cell: ___VARIABLE_cellName:identifier___Cell) {
        
    }
}
