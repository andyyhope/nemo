//
//  FormSectionEntity.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

class FormSectionEntity {
    let cellEntities: [ContentCellEntity]
    let title: String?
    
    init?(json: JSON) {
        guard let entities = json["cells"] as? [JSON] else { return nil }
        
        self.cellEntities = entities
            .compactMap{ ContentCellEntity(json: $0) }
        self.title = json["title"] as? String
        if self.cellEntities.count == 0 {
            return nil
        }
    }
}
