//
//  MainEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct MainEntity {
    
    let sections: [SectionEntity]
    
    init?(json: JSON) {
        guard let sections = json["sections"] as? [JSON] else { return nil }
        
        self.sections = sections
            .compactMap{ SectionEntity(json: $0) }
        
        if self.sections.count == 0 {
            return nil
        }
    }
}
