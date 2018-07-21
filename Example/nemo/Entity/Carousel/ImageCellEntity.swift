//
//  ImageCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

struct ImageCellEntity {
    let caption: String
    let image: UIImage
    
    init?(json: [String: Any]) {
        guard
            let caption = json["caption"] as? String,
            let imageName = json["image"] as? String,
            let image = UIImage(named: imageName)
            else { return nil }
        
        self.caption = caption
        self.image = image
    }
}
