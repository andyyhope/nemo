//
//  CarouselCellDataSource.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class CarouselCellDataSource { //: StateManageable {
    
    // MARK: - Properties
    
    let entity: CarouselCellEntity
    var model: CarouselCellModel
//    var state: State
    
    
    // MARK: - Initializer
    
    init(entity: CarouselCellEntity) {
        self.entity = entity
        self.model = CarouselCellModel(entity: entity)
    }
    
    
    // MARK: - Computered Properties
    
    
}

//extension CarouselCellDataSource: Requesting {
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

