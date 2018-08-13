//
//  GammaCell.swift
//  nemo
//
//  Created by Andyy Hope on 18/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class DetailCell: UITableViewCell, NibLoadable {

    @IBOutlet weak var headingLabel: UILabel! {
        didSet {
            headingLabel.numberOfLines = 0
        }
    }
    @IBOutlet weak var detailLabel: UILabel! {
        didSet {
            detailLabel.numberOfLines = 0
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension DetailCell: HeightDefaultable {
    static var defaultHeight: CGFloat {
        return 100
    }
}
