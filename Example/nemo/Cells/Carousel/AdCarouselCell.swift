//
//  AdCarouselCell.swift
//  nemo
//
//  Created by Andyy Hope on 18/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class AdCarouselCell: UICollectionViewCell, NibLoadable {

    @IBOutlet weak var adImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

extension AdCarouselCell: HeightDefaultable {
    static var defaultHeight: CGFloat {
        return 80
    }
}
