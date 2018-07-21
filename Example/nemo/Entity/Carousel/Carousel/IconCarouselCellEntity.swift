//
//  IconCarouselCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

struct IconCarouselCellEntity {
    let text: String
    let icon: UIImage
    
    init?(json: [String: Any]) {
        guard
            let text = json["text"] as? String,
            let iconName = json["icon"] as? String,
            let icon = UIImage(named: iconName)
            else { return nil }
        
        self.text = text
        self.icon = icon
    }
}
