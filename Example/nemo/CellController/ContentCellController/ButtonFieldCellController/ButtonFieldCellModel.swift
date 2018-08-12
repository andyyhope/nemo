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
    
    var state: ViewState
    let entity: ButtonFieldCellEntity
    
    
    // MARK: - Initializer
    
    init(entity: ButtonFieldCellEntity) {
        self.entity = entity
        self.state = .enabled
    }
    
    // MARK: - Computed Properties
    
    var buttonTitleText: String {
        return isEnabled ? entity.label : "Please wait..."
    }
    
    var backgroundColor: UIColor {
        return ColorFactory(string: entity.backgroundColor ?? "").color
    }
    
    var buttonColor: UIColor {
        return ColorFactory(string: entity.buttonColor ?? "").color
    }
    
    var buttonLabelColor: UIColor {
        return ColorFactory(string: entity.buttonLabelColor ?? "").color
    }
    
    var isEnabled: Bool {
        return state == .enabled
    }
    
    var isActivityIndicatorAnimating: Bool {
        return !isEnabled
    }
}

extension ButtonFieldCellModel: ViewStateManageable {
    enum ViewState {
        case enabled, disabled
    }
}
