//
//  SectionController.swift
//  nemo
//
//  Created by Andyy Hope on 29/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum SectionControllerType {
    case content(ContentSectionController)
    case carousel(CarouselSectionController)
    case segment(SegmentSectionController)
//    case form([ContentCellControllerType])
    
    init(sectionEntity: SectionEntity) {
        switch sectionEntity {
        case .content(let entity):
            self = .content(.init(entity: entity))
        case .carousel(let entity):
            self = .carousel(.init(entity: entity))
        case .segment(let entity):
            self = .segment(.init(entity: entity))
        }
    }
}
