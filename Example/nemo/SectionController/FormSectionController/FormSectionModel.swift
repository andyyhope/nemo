//
//  FormSectionModel.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class FormSectionModel {
    
    // MARK: - Properties
    
    var state: ViewState
    private let entity: FormSectionEntity
    
    
    // MARK: - Initializer
    
    init(entity: FormSectionEntity) {
        self.entity = entity
        self.state = .unfilled
    }
    
    // MARK: - Computed Properties
    
    var titleLabelText: String? {
        return entity.title
    }
}

extension FormSectionModel: ViewStateManageable {
    
    enum ViewState {
        case unfilled, sent
    }
}
