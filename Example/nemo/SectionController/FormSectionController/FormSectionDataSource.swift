//
//  FormSectionDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class FormSectionDataSource {
    
    // MARK: - Properties
    
    let entity: FormSectionEntity
    var model: FormSectionModel
    var state: State
    
    
    // MARK: - Initializer
    
    init(entity: FormSectionEntity) {
        self.entity = entity
        self.state = .loading
        self.model = FormSectionModel(entity: entity)
    }
    
    // MARK: - Computered Properties
    
    private var postJSON: JSON {
        return [:]
    }
}

extension FormSectionDataSource: Requesting {
    
    enum Request {
        case submit
    }
    
    func request(_ request: Request, completion: @escaping CompletionClosure) {
        state = .loading
        
        switch request {
        case .submit:
            requestSubmit(completion)
        }
    }
    
    private func requestSubmit(_ completion: @escaping CompletionClosure) {
        switch Requester.submit(.submitForm(postJSON)) {
        case .success:
            state = .completed
        case .failure(let error):
            state = .failed(.unknown(error))
            
        }
    }
}

