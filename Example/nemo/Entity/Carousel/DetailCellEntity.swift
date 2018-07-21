//
//  DetailCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

struct DetailTextCellEntity {
    let detail: String
    let heading: String
    let backgroundColor: UIColor
    
    init?(json: [String: Any]) {
        guard
            let heading = json["heading-text"] as? String,
            let detail = json["detail-text"] as? String,
            let backgroundColor = json["backgroundColor"] as? String
            else { return nil }
        
        self.heading = heading
        self.detail = detail
        self.backgroundColor = ColorFactory.color(forColor: backgroundColor)
    }
}
