//
//  ImageCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct ImageCarouselCellEntity {
    let caption: String
    let imageName: String
    let backgroundColor: String
    
    init?(json: JSON) {
        guard
            let caption = json["caption"] as? String,
            let imageName = json["image"] as? String,
            let backgroundColor = json["backgroundColor"] as? String
            else { return nil }
        
        self.caption = caption
        self.imageName = imageName
        self.backgroundColor = backgroundColor
    }
}
