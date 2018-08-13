//
//  SegmentSectionHeaderView.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class ContentSectionHeaderView: UITableViewHeaderFooterView, NibLoadable {

    @IBOutlet weak var headingLabel: UILabel! {
        didSet {
            headingLabel.text = nil
            headingLabel.font = .boldSystemFont(ofSize: 32)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension ContentSectionHeaderView: HeightDefaultable {
    static var defaultHeight: CGFloat {
        return 60
    }
}
