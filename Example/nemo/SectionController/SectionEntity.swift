//
//  SectionType.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum SectionEntity {
    case content(ContentSectionEntity)
    case carousel(CarouselSectionEntity)
    
    init?(json: JSON) {
        guard
            let type = json["type"] as? String
            else { assertionFailure("Invalid SectionEntity 'type' key passed"); return nil }
        
        switch type {
        case "content":
            guard let entity = ContentSectionEntity(json: json) else { fallthrough }
            self = .content(entity)
        case "carousel":
            guard let entity = CarouselSectionEntity(json: json) else { fallthrough }
            self = .carousel(entity)
        default:
            assertionFailure("Invalid SectionEntity identifier passed: \(type)")
            return nil
        }
    }
}
