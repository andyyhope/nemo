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
    case textField(TextFieldCellEntity)
    case switchField(SwitchCellEntity)
    
    private enum Types: String {
        case text, detail, image, textField, switchField
    }
    
    init?(json: JSON) {
        guard
            let typeString = json["type"] as? String,
            let type = Types(rawValue: typeString)
            else { assertionFailure("Invalid CellController 'type' key passed"); return nil }
        
        switch type {
        case .text:
            guard let entity = TextCellEntity(json: json) else { fallthrough }
            self = .text(entity)
        case .detail:
            guard let entity = DetailCellEntity(json: json) else { fallthrough }
            self = .detail(entity)
        case .image:
            guard let entity = ImageCellEntity(json: json) else { fallthrough }
            self = .image(entity)
        case .textField:
            guard let entity = TextFieldCellEntity(json: json) else { fallthrough }
            self = .textField(entity)
        case .switchField:
            guard let entity = SwitchCellEntity(json: json) else { fallthrough }
            self = .switchField(entity)
        default:
            assertionFailure("Invalid CellController identifier passed: \(type)")
            return nil
        }
    }
}
