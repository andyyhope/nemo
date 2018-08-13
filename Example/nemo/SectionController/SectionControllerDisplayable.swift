//
//  SectionControllerDisplayable.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

private let defaultFooterHeight: CGFloat = 16

protocol SectionControllerDisplayable {
    func registerViews(for tableView: UITableView)
    
    func tableView(_ tableView: UITableView, sectionHeaderHeightFor sectionController: SectionControllerType) -> CGFloat
    
    func tableView(_ tableView: UITableView, sectionFooterHeightFor sectionController: SectionControllerType) -> CGFloat
    
    func tableView(_ tableView: UITableView, headerViewFor sectionController: SectionControllerType, atIndex index: Int) -> UIView?
    
    func tableView(_ tableView: UITableView, footerViewFor sectionController: SectionControllerType, atIndex index: Int) -> UIView? 
}

extension SectionControllerDisplayable where Self: UIViewController {
    
    func registerViews(for tableView: UITableView) {
        tableView.register(SegmentSectionHeaderView.self)
        tableView.register(ContentSectionHeaderView.self)
    }
    
    func tableView(_ tableView: UITableView, sectionHeaderHeightFor sectionController: SectionControllerType) -> CGFloat {
        switch sectionController {
        case .content(let sectionController):
            return sectionController.model.titleLabelText != nil
                ? ContentSectionHeaderView.defaultHeight
                : .leastNormalMagnitude
        
        case .segment:
            return SegmentSectionHeaderView.defaultHeight
        
        case .form(let sectionController):
            return sectionController.model.titleLabelText != nil
                ? ContentSectionHeaderView.defaultHeight
                : .leastNormalMagnitude
        }
    }
    
    func tableView(_ tableView: UITableView, sectionFooterHeightFor sectionController: SectionControllerType) -> CGFloat {
        return defaultFooterHeight
    }
    
    
    func tableView(_ tableView: UITableView, headerViewFor sectionController: SectionControllerType, atIndex index: Int) -> UIView? {
        switch sectionController {
        case .content(let sectionController):
            guard sectionController.model.titleLabelText != nil else { return nil }
            let view: ContentSectionHeaderView = tableView.dequeueReusableView()
            sectionController.prepare(view)
            return view
        
        case .segment(let sectionController):
            let view: SegmentSectionHeaderView = tableView.dequeueReusableView()
            sectionController.prepare(view)
            return view
            
        case .form(let sectionController):
            guard sectionController.model.titleLabelText != nil else { return nil }
            let view: ContentSectionHeaderView = tableView.dequeueReusableView()
            sectionController.prepare(view)
            return view
        }
    }
    
    func tableView(_ tableView: UITableView, footerViewFor sectionController: SectionControllerType, atIndex index: Int) -> UIView? {
        return nil
    }
}
