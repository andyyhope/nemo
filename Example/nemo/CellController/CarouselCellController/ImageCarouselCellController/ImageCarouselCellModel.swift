//
//  ImageCarouselCellModel.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class ImageCarouselCellModel {
    
    // MARK: - Properties
    
//    var state: ViewState
    private let entity: ImageCarouselCellEntity
    
    
    // MARK: - Initializer
    
    init(entity: ImageCarouselCellEntity) {
        self.entity = entity
    }
    
    
    // MARK: - Computed Properties
    
//    var headingLabelText: String {
//        return entity.<#name#>
//    }
    
    var backgroundColor: UIColor {
        if let color = entity.backgroundColor{
            return .color(forColor: color)
        }
        else {
            return .defaultBackgroundColor
        }
    }
    
    var image: UIImage? {
        return UIImage(named: entity.imageName)
    }
    
//}
//
//extension ImageCarouselCellModel: ViewStateManageable {
//    enum ViewState {
//        case <#state 1#>, <#state 2#>
//    }
}
