//
//  ContentSectionModel.swift
//  nemo
//
//  Created by Andyy Hope on 12/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

final class ContentSectionModel {
    
    let entity: ContentSectionEntity
    
    init(entity: ContentSectionEntity) {
        self.entity = entity
    }
    
    var titleLabelText: String? {
        return entity.title
    }
}
