//
//  SegmentSectionControllerType.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

protocol SegmentSectionControllerDelegate: class {
    
    func segmentSectionControllerDidUpdate(_ sectionController: SegmentSectionController)
}

final class SegmentSectionController {
    let entity: SegmentSectionEntity
    let dataSource: SegmentSectionDataSource
    weak var delegate: SegmentSectionControllerDelegate?
    
    var model: SegmentSectionModel {
        return dataSource.model
    }
    
    var options: [SegmentSectionOption] {
        return dataSource.options
    }
    
    var selectedIndexCellControllers: [ContentCellControllerType] {
        return dataSource.selectedIndexCellControllers
    }
    
    init(entity: SegmentSectionEntity) {
        self.entity = entity
        self.dataSource = SegmentSectionDataSource(entity: self.entity)
    }
    
    func prepare(_ view: SegmentSectionHeaderView) {
        model.titles.enumerated()
            .forEach { view.segmentedControl.setTitle($1, forSegmentAt: $0) }
        
        view.segmentedControl.addTarget(
            self,
            action: #selector(segmentedControlValueChanged(sender:)),
            for: .valueChanged)
    }
    
    @objc func segmentedControlValueChanged(sender: UISegmentedControl) {
        dataSource.updateSelectedIndex(sender.selectedSegmentIndex)
        delegate?.segmentSectionControllerDidUpdate(self)
    }
}
