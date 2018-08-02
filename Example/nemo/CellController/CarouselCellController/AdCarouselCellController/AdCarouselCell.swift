//
//  AdCarouselCell.swift
//  nemo
//
//  Created by Andyy Hope on 1/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class AdCarouselCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

extension AdCarouselCell: SizeDefaultable {
    static var defaultSize: CGSize {
        return .init(width: 200, height: CarouselCell.defaultHeight)
    }
}
