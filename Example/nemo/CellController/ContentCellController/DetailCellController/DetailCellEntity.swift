//
//  DetailCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct DetailCellEntity {
    let detail: String
    let heading: String
    let backgroundColor: String?
    
    init?(json: JSON) {
        guard
            let heading = json["heading-text"] as? String,
            let detail = json["detail-text"] as? String
            else { return nil }
        
        self.heading = heading
        self.detail = detail
        self.backgroundColor = json["backgroundColor"] as? String
    }
}
