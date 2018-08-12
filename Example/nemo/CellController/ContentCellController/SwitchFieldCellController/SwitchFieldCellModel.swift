//
//  SwitchCellModel.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class SwitchFieldCellModel {
    
    // MARK: - Properties
    
    let entity: SwitchFieldCellEntity
    var value: Bool?
    var state: ViewState
    
    // MARK: - Initializer
    
    init(entity: SwitchFieldCellEntity) {
        self.entity = entity
        self.state = .enabled
    }
    
    // MARK: - Computed Properties
    
    var labelText: String {
        return entity.label
    }
    
    var isOn: Bool {
        return value ?? entity.defaultValue
    }
    
    var isEnabled: Bool {
        return state == .enabled
    }
}

extension SwitchFieldCellModel: ViewStateManageable {
    enum ViewState {
        case enabled, disabled
    }
}
