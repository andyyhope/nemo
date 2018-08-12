//
//  TextFieldCellController.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class TextFieldCellController: FormFieldHandling {
    
    // MARK: - Properties
    
    let entity: TextFieldCellEntity
    let dataSource: TextFieldCellDataSource
    weak var formDelegate: FormUpdateDelegate?
    
    // MARK: - Initializer
    
    init(entity: TextFieldCellEntity) {
        self.entity = entity
        self.dataSource = TextFieldCellDataSource(entity: entity)
        self.formDelegate = nil
    }
    
    
    // MARK: - Computed Properties
    
    var model: TextFieldCellModel {
        return dataSource.model
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: TextFieldCell) {
        cell.label.text = model.labelText
        cell.textField.placeholder = model.placeholderText
        cell.textField.isSecureTextEntry = model.isSecureTextEntry
        cell.textField.addTarget(self, action: #selector(formElementDidUpdate(sender:)), for: .editingChanged)
    }
    
    
    // MARK: - Selector
    
    @objc func formElementDidUpdate(sender: Any) {
        guard
            let sender = sender as? UITextField,
            let text = sender.text
            else { return }
    
        formDelegate?.formDidUpdate(
            for: .field(property: dataSource.property, value: text))
    }
}
