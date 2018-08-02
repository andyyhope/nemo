//
//  IconCarouselCell.swift
//  nemo
//
//  Created by Andyy Hope on 18/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class IconCarouselCell: UICollectionViewCell, NibLoadable {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}

extension IconCarouselCell: SizeDefaultable {
    static var defaultSize: CGSize {
        return .init(width: 100, height: CarouselCell.defaultHeight)
    }
}
