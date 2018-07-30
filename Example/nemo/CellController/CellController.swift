//
//  CellController.swift
//  nemo
//
//  Created by Andyy Hope on 29/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum CellController {
    case text(TextCellController)
    case detail(DetailCellController)
    case image(ImageCellController)
    case carousel(CarouselCellController)
    
    init(cellEntity: CellEntity) {
        switch cellEntity {
        case .text(let entity):
            self = .text(.init(entity: entity))
        case .detail(let entity):
            self = .detail(.init(entity: entity))
        case .image(let entity):
            self = .image(.init(entity: entity))
        case .carousel(let entity):
            self = .carousel(.init(entity: entity))
        }
    }
}
