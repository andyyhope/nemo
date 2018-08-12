//
//  TextFieldCellController.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class TextFieldCellController {
    
    // MARK: - Properties
    
    let entity: TextFieldCellEntity
    let dataSource: TextFieldCellDataSource
    weak var delegate: FormCellControllerDelegate?
    
    // MARK: - Initializer
    
    init(entity: TextFieldCellEntity) {
        self.entity = entity
        self.dataSource = TextFieldCellDataSource(entity: entity)
        self.delegate = nil
    }
    
    
    // MARK: - Computed Properties
    
    var model: TextFieldCellModel {
        return dataSource.model
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: TextFieldCell) {
        cell.label.text = model.labelText
        cell.textField.text = model.text
        cell.textField.placeholder = model.placeholderText
        cell.textField.isSecureTextEntry = model.isSecureTextEntry
        cell.textField.addTarget(self, action: #selector(formElementDidUpdate(sender:)), for: .editingChanged)
        cell.textField.isEnabled = model.isEnabled
    }
}

extension TextFieldCellController: FormFieldHandling {
    
    @objc func formElementDidUpdate(sender: Any) {
        guard
            let sender = sender as? UITextField,
            let text = sender.text
            else { return }
        
        dataSource.setFormValue(text)
        delegate?.formDidUpdate(
            for: .field(property: dataSource.property, value: text))
    }
    
    func clearFormField() {
        dataSource.setFormValue(nil)
    }
    
    func setInteractionEnabled(_ isInteractionEnabled: Bool) {
        model.state = isInteractionEnabled ? .enabled : .disabled
    }
}
