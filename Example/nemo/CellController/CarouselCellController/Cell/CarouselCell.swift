//
//  BetaCell.swift
//  nemo
//
//  Created by Andyy Hope on 18/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class CarouselCell: UITableViewCell, NibLoadable {
    
    static var inset: CGFloat {
        return 8
    }
    
    static var edgeInsets: UIEdgeInsets {
        return .init(top: inset, left: inset, bottom: inset, right: inset)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension CarouselCell: HeightDefaultable {
    static var defaultHeight: CGFloat {
        return 200
    }
}
