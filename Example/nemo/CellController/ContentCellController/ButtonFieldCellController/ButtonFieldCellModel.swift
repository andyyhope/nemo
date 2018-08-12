//
//  ButtonFieldCellModel.swift
//  nemo
//
//  Created by Andyy Hope on 12/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class ButtonFieldCellModel {
    
    // MARK: - Properties
    
//    var state: ViewState
    let entity: ButtonFieldCellEntity
    
    
    // MARK: - Initializer
    
    init(entity: ButtonFieldCellEntity) {
        self.entity = entity
    }
    
    // MARK: - Computed Properties
    
    var buttonTitleText: String {
        return entity.label
    }
    
    var backgroundColor: UIColor {
        return ColorFactory(string: entity.backgroundColor).color
    }
    
    var buttonColor: UIColor {
        return ColorFactory(string: entity.buttonColor).color
    }

}

//extension ButtonFieldCellModel: ViewStateManageable {
//    enum ViewState {
//        case <#state 1#>, <#state 2#>
//    }
//}
