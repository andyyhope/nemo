//
//  TextCellModel.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class TextCellModel {
    
    // MARK: - Properties
    
//    var state: ViewState
    private let entity: TextCellEntity
    
    
    // MARK: - Initializer
    
    init(entity: TextCellEntity) {
        self.entity = entity
    }
    
    
    // MARK: - Computed Properties
    
    var image: UIImage? {
        return UIImage(named: entity.image ?? "")
    }
    
    var headingLabelAttributedText: NSAttributedString {
        let mutableString = NSMutableAttributedString(attributedString: headingAttributedString)
        mutableString.append(subheadingAttributedString)
        return mutableString
    }
    
    private var headingAttributedString: NSAttributedString {
        return NSAttributedString(
            string: entity.text,
            attributes: [.font: UIFont.boldSystemFont(ofSize: 16)])
    }
    
    private var subheadingAttributedString: NSAttributedString {
        return NSAttributedString(
            string: entity.subtext != nil ? "\n\(entity.subtext!)" : "",
            attributes: [
                .font: UIFont.systemFont(ofSize: 14),
                .foregroundColor: UIColor.lightGray])
    }
    
    var backgroundColor: UIColor {
        if let color = entity.backgroundColor{
            return .color(forColor: color)
        }
        else {
            return .defaultBackgroundColor
        }
    }
}
//
//extension TextCellModel: ViewStateManageable {
//    enum ViewState {
//        case <#state 1#>, <#state 2#>
//    }
//}
