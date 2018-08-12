//
//  ControllerDisplayable.swift
//  nemo
//
//  Created by Andyy Hope on 5/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation
import UIKit

protocol CellControllerDisplayable {
    func registerCells(for tableView: UITableView)
    
    func tableView(_ tableView: UITableView, estimatedCellHeightFor cellController: ContentCellControllerType) -> CGFloat
    
    func tableView(_ tableView: UITableView, cellHeightFor cellController: ContentCellControllerType) -> CGFloat
    
    func tableView(_ tableView: UITableView, cellFor cellController: ContentCellControllerType, at indexPath: IndexPath) -> UITableViewCell
    
}

extension CellControllerDisplayable where Self: UIViewController {
    
    func registerCells(for tableView: UITableView) {
        tableView.register(TextCell.self)
        tableView.register(DetailCell.self)
        tableView.register(ImageCell.self)
        tableView.register(CarouselCell.self)
        tableView.register(TextFieldCell.self)
        tableView.register(SwitchFieldCell.self)
        tableView.register(ButtonFieldCell.self)
    }
    
    func tableView(_ tableView: UITableView, cellFor cellController: ContentCellControllerType, at indexPath: IndexPath) -> UITableViewCell {
        
        switch cellController {
        case .text(let cellController):
            let cell: TextCell = tableView.dequeueReusableCell(for: indexPath)
            cellController.prepare(cell)
            return cell
            
        case .detail(let cellController):
            let cell: DetailCell = tableView.dequeueReusableCell(for: indexPath)
            cellController.prepare(cell)
            return cell
            
        case .image(let cellController):
            let cell: ImageCell = tableView.dequeueReusableCell(for: indexPath)
            cellController.prepare(cell)
            return cell
            
        case .carousel(let cellController):
            let cell: CarouselCell = tableView.dequeueReusableCell(for: indexPath)
            cellController.prepare(cell)
            return cell
            
        case .textField(let cellController):
            let cell: TextFieldCell = tableView.dequeueReusableCell(for: indexPath)
            cellController.prepare(cell)
            return cell
            
        case .switchField(let cellController):
            let cell: SwitchFieldCell = tableView.dequeueReusableCell(for: indexPath)
            cellController.prepare(cell)
            return cell
            
        case .buttonField(let cellController):
            let cell: ButtonFieldCell = tableView.dequeueReusableCell(for: indexPath)
            cellController.prepare(cell)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedCellHeightFor cellController: ContentCellControllerType) -> CGFloat {
        switch cellController {
        case .detail:
            return DetailCell.defaultHeight
        default:
            return self.tableView(tableView, cellHeightFor: cellController)
        }
    }
    
    func tableView(_ tableView: UITableView, cellHeightFor cellController: ContentCellControllerType) -> CGFloat {
        switch cellController {
        case .text:
            return TextCell.defaultHeight
        case .detail:
            return tableView.estimatedRowHeight
        case .image:
            return ImageCell.defaultHeight
        case .carousel:
            return CarouselCell.defaultHeight
        case .textField:
            return TextFieldCell.defaultHeight
        case .switchField:
            return SwitchFieldCell.defaultHeight
        case .buttonField:
            return ButtonFieldCell.defaultHeight
        }
    }
}
