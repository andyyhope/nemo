//
//  CarouselCellType.swift
//  nemo
//
//  Created by Andyy Hope on 1/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum CarouselCellType {
    case ad(AdCarouselCellEntity)
    case icon(IconCarouselCellEntity)
    case image(ImageCarouselCellEntity)
    
    init?(json: JSON) {
        guard
            let type = json["type"] as? String
            else { assertionFailure("Invalid CellController 'type' key passed"); return nil }
        
        switch type {
        case "ad":
            guard let entity = AdCarouselCellEntity(json: json) else { fallthrough }
            self = .ad(entity)
        case "icon":
            guard let entity = IconCarouselCellEntity(json: json) else { fallthrough }
            self = .icon(entity)
        case "image":
            guard let entity = ImageCarouselCellEntity(json: json) else { fallthrough }
            self = .image(entity)
        default:
            assertionFailure("Invalid CellController identifier passed: \(type)")
            return nil
        }
    }
}
