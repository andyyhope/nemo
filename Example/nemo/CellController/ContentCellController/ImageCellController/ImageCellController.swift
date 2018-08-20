//
//  ImageCellController.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class ImageCellController {
    
    // MARK: - Properties
    
    let model: ImageCellModel
    let entity: ImageCellEntity
    weak var navigationDelegate: NavigationDelegate?
    let tapGestureRecognizer: UITapGestureRecognizer

    // MARK: - Initializer
    
    init(entity: ImageCellEntity) {
        self.entity = entity
        self.model = ImageCellModel(entity: entity)
        self.tapGestureRecognizer = UITapGestureRecognizer()
    }

    
    // MARK: - Preparation
    
    func prepare(_ cell: ImageCell) {
        cell.coverImageView.image = model.image
        cell.backgroundColor = model.backgroundColor
        addGestureRecognizer(to: cell.coverImageView)
    }
    
    private func addGestureRecognizer(to view: UIView) {
        guard view.gestureRecognizers == nil else { return }
        tapGestureRecognizer.addTarget(self,
                                       action: #selector(navigationWillBegin(sender:)))
        view.addGestureRecognizer(tapGestureRecognizer)
        view.isUserInteractionEnabled = true
    }
}

extension ImageCellController: NavigationRequesting {
    
    @objc func navigationWillBegin(sender: Any) {
        navigationDelegate?.navigate(to: .gallery(galleryID: 123, title: "Ramen"))
    }
}
