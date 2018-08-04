//
//  ArticleViewModel.swift
//  nemo
//
//  Created by Andyy Hope on 4/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class ArticleViewModel {
    
    // MARK: - Properties
    
    var state: ViewState
    var entity: ArticleEntity?
    
    
    // MARK: - Initializer
    
    init(entity: ArticleEntity?) {
        self.entity = entity
    }
}

//extension ArticleViewModel: ViewStateManageable {
//    enum ViewState {
//        case <#state 1#>, <#state 2#>
//    }
//}
