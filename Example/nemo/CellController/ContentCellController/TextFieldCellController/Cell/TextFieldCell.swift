//
//  TextFieldCell.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class TextFieldCell: UITableViewCell, NibLoadable {

    // MARK: - IBOutlets
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    // MARK: - View Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}

extension TextFieldCell: HeightDefaultable {
    
    static var defaultHeight: CGFloat {
        return 100
    }
}
