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
        cell.collectionView.backgroundColor = model.backgroundColor
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
