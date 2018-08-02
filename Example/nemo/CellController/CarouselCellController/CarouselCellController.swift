//
//  CarouselCellController.swift
//  nemo
//
//  Created by Andyy Hope on 22/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

final class CarouselCellController: NSObject {
    
    // MARK: - Properties
    
    let dataSource: CarouselCellDataSource
    
    
    // MARK: - Initializer
    
    init(entity: CarouselCellEntity) {
        self.dataSource = CarouselCellDataSource(entity: entity)
    }
    
    
    // MARK: - Computed Properties
    
    var model: CarouselCellModel {
        return dataSource.model
    }
    
    var entity: CarouselCellEntity {
        return dataSource.entity
    }
    
    
    // MARK: - Preparation
    
    func prepare(_ cell: CarouselCell) {
        prepareBindings(for: cell)
        
        var collectionView: UICollectionView { return cell.collectionView }
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = model.backgroundColor
        collectionView.collectionViewLayout = model.layout
        collectionView.register(AdCarouselCell.self)
        collectionView.register(IconCarouselCell.self)
        collectionView.register(ImageCarouselCell.self)
    }
    
    private func prepareBindings(for cell: CarouselCell) {
        
    }
}

extension CarouselCellController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dataSource.numberOfSections
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.numberOfCells(inSection: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch dataSource.cellController(for: indexPath) {
        case .ad(let cellController):
            let cell: AdCarouselCell = collectionView.dequeueReusableCell(for: indexPath)
            cellController.prepare(cell)
            return cell
            
        case .icon(let cellController):
            let cell: IconCarouselCell = collectionView.dequeueReusableCell(for: indexPath)
            cellController.prepare(cell)
            return cell
            
        case .image(let cellController):
            let cell: ImageCarouselCell = collectionView.dequeueReusableCell(for: indexPath)
            cellController.prepare(cell)
            return cell
        }
    }
}

extension CarouselCellController: UICollectionViewDelegate {
    
}

extension CarouselCellController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size: CGSize = {
            switch dataSource.cellController(for: indexPath) {
            case .ad:
                return AdCarouselCell.defaultSize
            case .icon:
                return IconCarouselCell.defaultSize
            case .image:
                return ImageCarouselCell.defaultSize
            }
        }()
        
        return .init(
            width: size.width,
            height: size.height - (CarouselCell.inset * 2))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return CarouselCell.edgeInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CarouselCell.inset
    }
}
