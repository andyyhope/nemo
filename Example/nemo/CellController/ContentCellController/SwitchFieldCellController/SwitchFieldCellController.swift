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
    
    let entity: SwitchFieldCellEntity
    let dataSource: SwitchFieldCellDataSource
    weak var delegate: FormCellControllerDelegate?
    
    
    // MARK: - Initializer
    
    init(entity: SwitchFieldCellEntity) {
        self.dataSource = SwitchFieldCellDataSource(entity: entity)
        self.entity = entity
    }
    
    
    // MARK: - Computed Properties
    
    var model: SwitchFieldCellModel {
        return dataSource.model
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: SwitchFieldCell) {
        cell.label.text = model.labelText
        cell.switch.isOn = model.isOn
        cell.switch.addTarget(self, action: #selector(formElementDidUpdate(sender:)), for: .valueChanged)
        cell.switch.isEnabled = model.isEnabled
        
        delegate?.formDidUpdate(
            for: .field(property: dataSource.property, value: model.isOn))
    }
}

extension SwitchFieldCellController: FormFieldHandling {
    
    @objc func formElementDidUpdate(sender: Any) {
        guard let sender = sender as? UISwitch else { return }
        
        dataSource.setFormValue(sender.isOn)
        delegate?.formDidUpdate(
            for: .field(property: dataSource.property, value: sender.isOn))
    }
    
    func clearFormField() {
        dataSource.setFormValue(nil)
    }
    
    func setInteractionEnabled(_ isInteractionEnabled: Bool) {
        model.state = isInteractionEnabled ? .enabled : .disabled
    }
}
