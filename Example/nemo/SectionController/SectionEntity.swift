//
//  SectionType.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum SectionEntity {
    
    private enum Types: String {
        case content, carousel, segment, form
    }
    
    case content(ContentSectionEntity)
    case segment(SegmentSectionEntity)
    case form(FormSectionEntity)
    
    init?(json: JSON) {
        guard
            let typeString = json["type"] as? String,
            let type = Types(rawValue: typeString)
            else { assertionFailure("Invalid SectionEntity 'type' key passed"); return nil }
        
        switch type {
        case .content:
            guard let entity = ContentSectionEntity(json: json) else { fallthrough }
            self = .content(entity)
        case .segment:
            guard let entity = SegmentSectionEntity(json: json) else { fallthrough }
            self = .segment(entity)
        case .form:
            guard let entity = FormSectionEntity(json: json) else { fallthrough }
            self = .form(entity)
        default:
            assertionFailure("Invalid SectionEntity identifier passed: \(type)")
            return nil
        }
    }
}
