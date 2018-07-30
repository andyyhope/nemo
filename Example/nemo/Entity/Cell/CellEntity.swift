//
//  CellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 29/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum CellEntity {
    case text(TextCellEntity)
    case detail(DetailCellEntity)
    case image(ImageCellEntity)
    case carousel(CarouselCellEntity)
    
    init?(json: JSON) {
        guard
            let type = json["type"] as? String
            else { assertionFailure("Invalid CellController 'type' key passed"); return nil }
        
        switch type {
        case "text":
            if let entity = TextCellEntity(json: json) {
                self = .text(entity)
            }
        case "detail":
            if let entity = DetailCellEntity(json: json) {
                self = .detail(entity)
            }
        case "image":
            if let entity = ImageCellEntity(json: json) {
                self = .image(entity)
            }
        case "carousel":
            if let entity = CarouselCellEntity(json: json) {
                self = .carousel(entity)
            }
        default:
            assertionFailure("Invalid CellController identifier passed: \(type)")
            return nil
        }
        assertionFailure("Couldn't parse CellController with type: \(type)")
        return nil
    }
}
