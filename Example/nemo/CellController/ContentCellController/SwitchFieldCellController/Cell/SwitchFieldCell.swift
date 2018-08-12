//
//  SwitchCell.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class SwitchFieldCell: UITableViewCell, NibLoadable {

    // MARK: - Properties
    
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    
    
    // MARK: - View Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}

extension SwitchFieldCell: HeightDefaultable {
    static var defaultHeight: CGFloat {
        return 44
    }
}
