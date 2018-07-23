//
//  AlphaCell.swift
//  nemo
//
//  Created by Andyy Hope on 18/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

class TextCell: UITableViewCell, NibLoadable {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension TextCell: HeightDefaultable {
    static var defaultHeight: CGFloat {
        return 80
    }
}
