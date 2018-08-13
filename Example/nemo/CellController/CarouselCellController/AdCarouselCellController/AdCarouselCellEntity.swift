//
//  AdCarouselCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct AdCarouselCellEntity {
    let company: String
    let description: String
    let imageName: String
    let url: URL
    let backgroundColor: String?
    
    init?(json: JSON) {
        guard
            let company = json["company"] as? String,
            let description = json["description"] as? String,
            let urlString = json["url"] as? String,
            let url = URL(string: urlString),
            let imageName = json["image"] as? String
            else { return nil }
        
        self.company = company
        self.description = description
        self.url = url
        self.imageName = imageName
        self.backgroundColor = json["backgroundColor"] as? String
    }
}
