//
//  AdCarouselCellModel.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class AdCarouselCellModel {
    
    // MARK: - Properties
    
//    var state: ViewState
    private let entity: AdCarouselCellEntity
    
    
    // MARK: - Initializer
    
    init(entity: AdCarouselCellEntity) {
        self.entity = entity
    }
    
    
    // MARK: - Computed Properties
    
    var captionLabelText: String {
        return entity.company
    }
    
    var backgroundColor: UIColor {
        return .color(forColor: entity.backgroundColor)
    }
    
    var image: UIImage? {
        return UIImage(named: entity.imageName)
    }
//}
//
//extension AdCarouselCellModel: ViewStateManageable {
//    enum ViewState {
//        case <#state 1#>, <#state 2#>
//    }
}
