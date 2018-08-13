//
//  FormSectionController.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

// MARK: - Delegates

protocol FormSectionControllerDelegate: class {
    func formSectionController(_ sectionController: FormSectionController, didUpdate state: State)
}

protocol FormCellControllerDelegate: class {
    func formDidUpdate(for field: FormFieldType)
}


// MARK: - Section Controller

final class FormSectionController {
    
    // MARK: - Properties
    
    let dataSource: FormSectionDataSource
    let cellControllers: [ContentCellControllerType]
    let entity: FormSectionEntity
    weak var delegate: FormSectionControllerDelegate?

    // MARK: - Initializer
    
    init(entity: FormSectionEntity) {
        self.entity = entity
        self.dataSource = FormSectionDataSource(entity: entity)
        self.cellControllers = entity.cellEntities
            .map { ContentCellControllerType(cellEntity: $0) }
        
        self.cellControllers.forEach {
            switch $0 {
            case .textField(let cellController):
                cellController.delegate = self
            case .switchField(let cellController):
                cellController.delegate = self
            case .buttonField(let cellController):
                cellController.delegate = self
            default:
                return
            }
        }
    }
    
    // MARK: - Computed Properties
    
    var model: FormSectionModel {
        return dataSource.model
    }
    
    // MARK: - Preparation
    
    func prepare(_ view: SectionTitleHeaderView) {
        view.titleLabel.text = model.titleLabelText
    }
    
    private func clearForms() {
        cellControllers.forEach {
            switch $0 {
            case .textField(let cellController):
                cellController.clearFormField()
            case .switchField(let cellController):
                cellController.clearFormField()
            case .buttonField(let cellController):
                cellController.clearFormField()
            default:
                return
            }
        }
    }
    
    private func setFormsInteractionEnabled(_ isInteractionEnabled: Bool) {
        cellControllers.forEach {
            switch $0 {
            case .textField(let cellController):
                cellController.setInteractionEnabled(isInteractionEnabled)
            case .switchField(let cellController):
                cellController.setInteractionEnabled(isInteractionEnabled)
            case .buttonField(let cellController):
                cellController.setInteractionEnabled(isInteractionEnabled)
            default:
                return
            }
        }
    }
}

enum FormFieldType {
    case field(property: String, value: Any)
    case submit
    case cancel
}

extension FormSectionController: FormCellControllerDelegate {
    
    func formDidUpdate(for field: FormFieldType) {
        switch field {
        case .field(let property, let value):
            dataSource.setPost(property: property, value: value)
        case .submit:
            submitForm()
        case .cancel:
            clearForms()
            delegate?.formSectionController(self, didUpdate: .completed)
        }
    }
    
    private func submitForm() {
        setFormsInteractionEnabled(false)
        delegate?.formSectionController(self, didUpdate: .loading)
        dataSource.request(.submit) { [weak self] in
            self?.handleSubmitForm(for: $0)
        }
    }
    
    private func handleSubmitForm(for result: Result<String>) {
        switch result {
        case .success:
            setFormsInteractionEnabled(true)
            clearForms()
            delegate?.formSectionController(self, didUpdate: .completed)
        case .failure(let error):
            setFormsInteractionEnabled(true)
            delegate?.formSectionController(self, didUpdate: .failed(.unknown(error)))
        }
    }
}




