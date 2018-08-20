//
//  ButtonFieldCellController.swift
//  nemo
//
//  Created by Andyy Hope on 12/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class ButtonFieldCellController {
    
    // MARK: - Properties
    
    let dataSource: ButtonFieldCellDataSource
    weak var delegate: FormCellControllerDelegate?
    
    
    // MARK: - Initializer
    
    init(entity: ButtonFieldCellEntity) {
        self.dataSource = ButtonFieldCellDataSource(entity: entity)
    }
    
    
    // MARK: - Computed Properties
    
    var model: ButtonFieldCellModel {
        return dataSource.model
    }
    
    var entity: ButtonFieldCellEntity {
        return dataSource.entity
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: ButtonFieldCell) {
        cell.button.setTitle(model.buttonTitleText, for: .normal)
        cell.button.backgroundColor = model.buttonColor
        cell.button.addTarget(self, action: #selector(formElementDidUpdate(sender:)), for: .touchUpInside)
        cell.button.tintColor = model.buttonLabelColor
        cell.activityIndicatorView.color = model.buttonLabelColor
        cell.button.isEnabled = model.isEnabled
        model.isActivityIndicatorAnimating
            ? cell.activityIndicatorView.startAnimating()
            : cell.activityIndicatorView.stopAnimating()
    }
}

extension ButtonFieldCellController: FormFieldHandling {
    @objc func formElementDidUpdate(sender: Any) {
        let type: FormFieldType = entity.property == .submit
            ? .submit
            : .cancel
        
        delegate?.formDidUpdate(for: type)
    }
    
    func clearFormField() { return }
    
    func setInteractionEnabled(_ isInteractionEnabled: Bool) {
        model.state = isInteractionEnabled ? .enabled : .disabled
    }
}
