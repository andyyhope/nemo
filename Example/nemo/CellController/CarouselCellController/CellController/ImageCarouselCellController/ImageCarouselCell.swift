//
//  ImageCarouselCell.swift
//  nemo
//
//  Created by Andyy Hope on 18/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class ImageCarouselCell: UICollectionViewCell, NibLoadable {

    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension ImageCarouselCell: HeightDefaultable {
    static var defaultHeight: CGFloat {
        return 80
    }
}
