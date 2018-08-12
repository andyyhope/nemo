//
//  TextFieldCellDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class TextFieldCellDataSource: FormFieldValueStoring {
    
    // MARK: - Properties
    
    let entity: TextFieldCellEntity
    var model: TextFieldCellModel
    
    internal (set) var formValue: Any?
    
    // MARK: - Initializer
    
    init(entity: TextFieldCellEntity) {
        self.entity = entity
        self.model = TextFieldCellModel(entity: entity)
        self.formValue = nil
    }
    
    var property: String {
        return entity.property
    }
    
    func setFormValue(_ value: Any?) {
        model.text = value as? String
    }
}

