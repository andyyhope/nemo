//
//  CellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 29/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum ContentCellEntity {
    case text(TextCellEntity)
    case detail(DetailCellEntity)
    case image(ImageCellEntity)
    
    init?(json: JSON) {
        guard
            let type = json["type"] as? String
            else { assertionFailure("Invalid CellController 'type' key passed"); return nil }
        
        switch type {
        case "text":
            guard let entity = TextCellEntity(json: json) else { fallthrough }
            self = .text(entity)
        case "detail":
            guard let entity = DetailCellEntity(json: json) else { fallthrough }
            self = .detail(entity)
        case "image":
            guard let entity = ImageCellEntity(json: json) else { fallthrough }
            self = .image(entity)
        default:
            assertionFailure("Invalid CellController identifier passed: \(type)")
            return nil
        }
    }
}
