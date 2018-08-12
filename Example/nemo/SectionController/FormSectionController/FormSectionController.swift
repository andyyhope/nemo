//
//  FormSectionController.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class FormSectionController {
    
    // MARK: - Properties
    
    let model: FormSectionModel
    var cellControllers: [ContentCellControllerType]
    let entity: FormSectionEntity
    

    // MARK: - Initializer
    
    init(entity: FormSectionEntity) {
        self.entity = entity
        self.model = FormSectionModel(entity: entity)
        self.cellControllers = entity.cellEntities
            .map { ContentCellControllerType(cellEntity: $0) }
        
        self.cellControllers.forEach {
            switch $0 {
            case .textField(let cellController):
                cellController.formDelegate = self
            case .switchField(let cellController):
                cellController.formDelegate = self
            default:
                return
            }
        }
    }
    
    // MARK: - Preparation
    
    func prepare(_ view: FormSectionHeaderView) {
        
    }
    
    // MARK: - Form Selector
}

enum FormFieldType {
    case field(property: String, value: Any)
    case submit
    case cancel
}

extension FormSectionController: FormUpdateDelegate {
    
    func formDidUpdate(for field: FormFieldType) {
        switch field {
        case .field(let property, let value):
            print(property, value)
        case .submit:
            break
        case .cancel:
            break
        }
    }
}

protocol FormFieldHandling {
    var formDelegate: FormUpdateDelegate? { get set }
    
    func formElementDidUpdate(sender: Any)
}

protocol FormUpdateDelegate: class {
    func formDidUpdate(for field: FormFieldType)
}
