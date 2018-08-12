//
//  SwitchCellController.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class SwitchFieldCellController {
    
    // MARK: - Properties
    
    let entity: SwitchCellEntity
    let dataSource: SwitchCellDataSource
    weak var formDelegate: FormUpdateDelegate?
    
    
    // MARK: - Initializer
    
    init(entity: SwitchCellEntity) {
        self.dataSource = SwitchCellDataSource(entity: entity)
        self.entity = entity
    }
    
    
    // MARK: - Computed Properties
    
    var model: SwitchCellModel {
        return dataSource.model
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: SwitchFieldCell) {
        cell.label.text = model.labelText
        cell.switch.isOn = model.defaultValue
        cell.switch.addTarget(self, action: #selector(formElementDidUpdate(sender:)), for: .valueChanged)
    }
}

extension SwitchFieldCellController: FormFieldHandling {
    
    @objc func formElementDidUpdate(sender: Any) {
        guard let sender = sender as? UISwitch else { return }
        
        formDelegate?.formDidUpdate(
            for: .field(property: dataSource.property, value: sender.isOn))
    }
    
    func setFormDelegate(_ delegate: FormUpdateDelegate) {
        self.formDelegate = delegate
    }
}
