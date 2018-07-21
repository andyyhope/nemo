//
//  AdCarouselCellEntity.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

struct AdCarouselCellEntity {
    let company: String
    let description: String
    let image: UIImage
    let url: URL
    
    init?(json: [String: Any]) {
        guard
            let company = json["company"] as? String,
            let description = json["description"] as? String,
            let urlString = json["url"] as? String,
            let url = URL(string: urlString),
            let imageName = json["image"] as? String,
            let image = UIImage(named: imageName)
            else { return nil }
        
        self.company = company
        self.description = description
        self.url = url
        self.image = image
    }
}
