//
//  ButtonFieldCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 12/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct ButtonFieldCellEntity {
    
    enum ButtonType: String {
        case submit, cancel
    }
    
    let label: String
    let property: ButtonType
    let backgroundColor: String?
    let buttonColor: String?
    let buttonLabelColor: String?
    
    init?(json: JSON) {
        guard
            let propertyString = json["property"] as? String,
            let property = ButtonType(rawValue: propertyString)
            else { return nil }
        
    self.property = property
    self.buttonColor = json["buttonColor"] as? String
    self.buttonLabelColor = json["buttonLabelColor"] as? String
    self.label = (json["label"] as? String)
        ?? property.rawValue.capitalized
    self.backgroundColor = json["backgroundColor"] as? String
    }
}
