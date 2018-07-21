//
//  ViewControllerDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 1/4/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerDataSource {
    var sectionControllers: [SectionController]
    var state: State
    var entity: Company?
    
    // MARK: -  Init
    
    init() {
        self.sectionControllers = []
        self.state = .loading
    }
    
    // MARK: - Behaviour
    
    func loadData(completion: @escaping CompletionClosure) {
        self.state = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.entity = Example.data
            self.state = .completed
            
            completion()
        }
    }
}

class ViewControllerModel {
    let entity: Company?
    var state: State
    
    // MARK: - Init
    
    init(entity: Company?, state: State) {
        self.entity = entity
        self.state = state
    }
    
    // MARK: - Computed Properties
    
    var title: String {
        switch state {
        case .failed:
            return "Error"
        default:
            if let entity = entity {
                return "\(entity.name)\n\(entity.location)"
            } else {
                return "Loading..."
            }
        }
    }
    
    var backgroundColor: UIColor {
        switch state {
        case .failed:
            return .red
        default:
            return entity?.color ?? .gray
        }
    }
}
