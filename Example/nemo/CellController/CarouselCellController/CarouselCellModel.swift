//
//  CarouselCellModel.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class CarouselCellModel {
    
    // MARK: - Properties
    
//    var state: ViewState
    let entity: CarouselCellEntity
    let layout: UICollectionViewLayout
    
    
    // MARK: - Initializer
    
    init(entity: CarouselCellEntity) {
        self.entity = entity
        self.layout = UICollectionViewFlowLayout()
        (self.layout as? UICollectionViewFlowLayout)?.scrollDirection = .horizontal
    }
    
    // MARK: - Layout
    
    func minimumInteritemSpacing(forSection section: Int) -> CGFloat {
        return 8
    }
    
    // MARK: - Computed Properties
    
    var backgroundColor: UIColor {
        if let color = entity.backgroundColor{
            return .color(forColor: color)
        }
        else {
            return .defaultBackgroundColor
        }
    }
}
//
//extension CarouselCellModel: ViewStateManageable {
//    enum ViewState {
//        case <#state 1#>, <#state 2#>
//    }
//}
