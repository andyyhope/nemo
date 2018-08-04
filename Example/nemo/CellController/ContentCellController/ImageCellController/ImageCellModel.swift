//
//  ImageCellModel.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class ImageCellModel {
    
    // MARK: - Properties
    
//    var state: ViewState
    private let entity: ImageCellEntity
    
    
    // MARK: - Initializer
    
    init(entity: ImageCellEntity) {
        self.entity = entity
    }
    
    
    // MARK: - Computed Properties
    
    var captianLabelText: String {
        return entity.caption
    }
    
    var backgroundColor: UIColor {
        return .color(forColor: entity.backgroundColor)
    }
    
    var image: UIImage? {
        return UIImage(named: entity.imageName)
    }
}
//
//extension ImageCellModel: ViewStateManageable {
//    enum ViewState {
//        case <#state 1#>, <#state 2#>
//    }
//}
