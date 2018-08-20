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
    private var postJSON: JSON
    
    // MARK: - Initializer
    
    init(entity: FormSectionEntity) {
        self.entity = entity
        self.state = .loading
        self.model = FormSectionModel(entity: entity)
        self.postJSON = [:]
    }
    
    // MARK: - POST request
    
    func setPost(property: String, value: Any) {
        postJSON[property] = value
    }
}

extension FormSectionDataSource: Requesting {
    
    enum Request {
        case submit
    }
    
    func request(_ request: Request, completion: @escaping ResultClosure) {
        state = .loading
        
        switch request {
        case .submit:
            requestSubmit(completion)
        }
    }
    
    private func requestSubmit(_ completion: @escaping ResultClosure) {
        Requester.submit(.submitForm(postJSON)) { 
            completion($0)
        }
    }
}

