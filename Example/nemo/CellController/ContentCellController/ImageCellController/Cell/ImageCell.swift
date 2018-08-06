//
//  DeltaCell.swift
//  nemo
//
//  Created by Andyy Hope on 18/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell, NibLoadable {

    @IBOutlet weak var coverImageView: UIImageView! { didSet {
        coverImageView.contentMode = .scaleAspectFill
        coverImageView.clipsToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension ImageCell: HeightDefaultable {
    static var defaultHeight: CGFloat {
        return 100
    }
}
