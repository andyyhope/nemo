//
//  CarouselCellControllerType.swift
//  nemo
//
//  Created by Andyy Hope on 1/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum CarouselCellControllerType {
    case ad(AdCarouselCellController)
    case icon(IconCarouselCellController)
    case image(ImageCarouselCellController)
    
    
    init(entity: CarouselCellType) {
        switch entity {
        case .ad(let entity):
            self = .ad(.init(entity: entity))
        case .icon(let entity):
            self = .icon(.init(entity: entity))
        case .image(let entity):
            self = .image(.init(entity: entity))
        }
    }
}
