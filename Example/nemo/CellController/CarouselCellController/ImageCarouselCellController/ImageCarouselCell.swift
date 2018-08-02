//
//  ImageCarouselCell.swift
//  nemo
//
//  Created by Andyy Hope on 18/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class ImageCarouselCell: UICollectionViewCell, NibLoadable {

    @IBOutlet weak var imageView: UIImageView! { didSet {
        imageView.contentMode = .scaleAspectFill
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension ImageCarouselCell: SizeDefaultable {
    static var defaultSize: CGSize {
        return .init(width: 80, height: CarouselCell.defaultHeight)
    }
}
