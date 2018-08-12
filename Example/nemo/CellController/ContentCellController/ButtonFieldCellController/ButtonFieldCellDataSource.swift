//
//  ButtonFieldCellDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 12/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class ButtonFieldCellDataSource {
    
    // MARK: - Properties
    
    let entity: ButtonFieldCellEntity
    var model: ButtonFieldCellModel
//    var state: State
    
    
    // MARK: - Initializer
    
    init(entity: ButtonFieldCellEntity) {
        self.entity = entity
        self.model = ButtonFieldCellModel(entity: entity)
    }
    
    
    // MARK: - Computered Properties
    
    
}

//extension ButtonFieldCellDataSource: Requesting {
//    
//    enum Request {
//        case <#request#>
//    }
//    
//    func request(_ request: Request) {
//        state = .loading
//        
//        switch request {
//        case .<#request#>:
//            request<#Request#>()
//        }
//    }
//    
//    private func request<#Request#>() {
//        
//    }
//}

