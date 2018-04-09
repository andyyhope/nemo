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
    
    let ___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___
    let dataSource: ___VARIABLE_cellName:identifier___CellDataSource
    
    
    // MARK: - Initializer
    
    init(___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___) {
        self.dataSource = ___VARIABLE_cellName:identifier___CellDataSource(___VARIABLE_entityName:identifier___: ___VARIABLE_entityName:identifier___)
    }
    
    
    // MARK: - Computed Properties
    
    var model: ___VARIABLE_cellName:identifier___CellModel {
        return dataSource.model
    }
    
    var ___VARIABLE_entityName:identifier___: ___VARIABLE_entityType:identifier___ {
        return dataSource.___VARIABLE_entityName:identifier___
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: ___VARIABLE_cellName:identifier___Cell) {
        cell.headingLabel.text = model.headingLabelText
        
        prepareBindings(for: cell)
    }
    
    private func prepareBindings(for cell: ___VARIABLE_cellName:identifier___Cell) {
        
    }
}
