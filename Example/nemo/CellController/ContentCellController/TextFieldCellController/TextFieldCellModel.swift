//
//  TextFieldCellModel.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class TextFieldCellModel {
    
    // MARK: - Properties
    
    var state: ViewState
    let entity: TextFieldCellEntity
    var text: String?
    
    // MARK: - Initializer
    
    init(entity: TextFieldCellEntity) {
        self.entity = entity
        self.state = .enabled
    }
    
    // MARK: - Computed Properties
    
    var labelText: String {
        return entity.label
    }
    
    var placeholderText: String? {
        return entity.placeholder
    }
    
    var isSecureTextEntry: Bool {
        return entity.isSecureTextEntry
    }
    
    var isEnabled: Bool {
        return state == .enabled
    }
}

extension TextFieldCellModel: ViewStateManageable {
    enum ViewState {
        case enabled, disabled
    }
}
