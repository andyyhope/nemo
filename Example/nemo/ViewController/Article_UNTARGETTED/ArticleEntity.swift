//
//  ArticleEntity.swift
//  nemo
//
//  Created by Andyy Hope on 4/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

class ArticleEntity {
    
    let articleID: Int
    
    private(set) var entities: [CellEntity]
    
    init(articleID: Int) {
        self.articleID = articleID
        self.entities = []
    }
    
    func update(_ entities: [CellEntity]) {
        self.entities = entities
    }
}
