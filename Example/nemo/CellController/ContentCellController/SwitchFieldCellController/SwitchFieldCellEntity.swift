//
//  SwitchCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct SwitchFieldCellEntity {
    
    let property: String
    let label: String
    let defaultValue: Bool
    
    init?(json: JSON) {
        guard
            let label = json["label"] as? String,
            let property = json["property"] as? String
            else { return nil }
        
        self.label = label
        self.property = property
        self.defaultValue = json["default-value"] as? Bool ?? false
    }
}
