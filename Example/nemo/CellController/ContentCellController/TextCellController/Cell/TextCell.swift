//
//  AlphaCell.swift
//  nemo
//
//  Created by Andyy Hope on 18/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class TextCell: UITableViewCell, NibLoadable {

    @IBOutlet weak var headingLabel: UILabel! {
        didSet {
            headingLabel.numberOfLines = 0
            headingLabel.text = nil
        }
    }
    @IBOutlet weak var contentImageView: UIImageView! {
        didSet {
            contentImageView.backgroundColor = .lightGray
            contentImageView.updateCornerRadii(defaultCornerRadius/2)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension TextCell: HeightDefaultable {
    static var defaultHeight: CGFloat {
        return 80
    }
}
