//
//  MainViewModel.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class MainViewModel {
    
    // MARK: - Properties
    
    var state: ViewState
    var entity: MainEntity?
    
    
    // MARK: - Initializer
    
    init(entity: MainEntity?) {
        self.entity = entity
        self.state = .loading
    }
    
    // MARK: - Computed Properties
    
    var backgroundColor: UIColor {
        return .black
    }
}
//
//extension MainViewModel:  {
//    typealias ViewState = ViewState
//}
