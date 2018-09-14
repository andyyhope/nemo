//
//  IconCarouselCell.swift
//  nemo
//
//  Created by Andyy Hope on 18/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class IconCarouselCell: UICollectionViewCell, NibLoadable {
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.font = .boldSystemFont(ofSize: 16)
        }
    }
    
    @IBOutlet weak var iconImageView: UIImageView! {
        didSet {
            iconImageView.contentMode = .scaleAspectFit
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension IconCarouselCell: SizeDefaultable {
    
    static var defaultSize: CGSize {
        return .init(width: 100, height: CarouselCell.defaultHeight)
    }
}
