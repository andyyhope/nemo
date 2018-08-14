//
//  TextCellController.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class TextCellController {
    
    // MARK: - Properties
    
    let model: TextCellModel
    let entity: TextCellEntity
    weak var navigationDelegate: NavigationDelegate?
    

    // MARK: - Initializer
    
    init(entity: TextCellEntity) {
        self.entity = entity
        self.model = TextCellModel(entity: entity)
    }

    
    // MARK: - Preparation
    
    func prepare(_ cell: TextCell) {
        cell.headingLabel.attributedText = model.headingLabelAttributedText
        cell.contentImageView.image = model.image
        cell.backgroundColor = model.backgroundColor
        cell.button.addTarget(self,
                              action: #selector(navigationWillBegin(sender:)),
                              for: .touchUpInside)
    }
}

extension TextCellController: NavigationRequesting {
    
    @objc func navigationWillBegin(sender: Any) {
        navigationDelegate?.navigate(to: .article(articleID: 123, title: "Boo"))
    }
}
