//
//  IconCarouselCellModel.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class IconCarouselCellModel {
    
    // MARK: - Properties
    
    private let entity: IconCarouselCellEntity
    
    
    // MARK: - Initializer
    
    init(entity: IconCarouselCellEntity) {
        self.entity = entity
    }
    
    
    // MARK: - Computed Properties
    
    var backgroundColor: UIColor {
        if let color = entity.backgroundColor{
            return .color(forColor: color)
        }
        else {
            return .defaultBackgroundColor
        }
    }
    
    var iconImage: UIImage? {
        return UIImage(named: entity.iconName)
    }
}
