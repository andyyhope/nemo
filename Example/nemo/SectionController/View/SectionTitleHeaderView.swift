//
//  SegmentSectionHeaderView.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class SectionTitleHeaderView: UITableViewHeaderFooterView, NibLoadable {

    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.text = nil
            titleLabel.font = .systemFont(ofSize: 32, weight: .heavy)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension SectionTitleHeaderView: HeightDefaultable {
    static var defaultHeight: CGFloat {
        return 60
    }
}
