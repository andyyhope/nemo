//
//  MainViewController.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

extension MainViewController {
    typealias DataSource = MainViewDataSource
    typealias Model = MainViewModel
}

final class MainViewController: UIViewController, ErrorPresenting {
    
    // MARK: - Properties
    
    private var dataSource: DataSource = DataSource()
    private var tableView: UITableView = UITableView()
    
    // MARK: - Computed Properties
    
    private var model: Model {
        return dataSource.model
    }
    
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareTableView()
        
        
        dataSource.request(.initial) { [weak self] result in
            switch result {
            case .loading:
                break
            case .completed:
                self?.tableView.reloadData()
            case .failed(let failure):
                self?.presentError(withMessage: failure.description)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    
    // MARK: - Preparation
    
    private func prepareTableView() {
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = model.backgroundColor
        tableView.register(TextCell.self)
        tableView.register(DetailCell.self)
        tableView.register(ImageCell.self)
        tableView.register(CarouselCell.self)
        tableView.register(TextFieldCell.self)
        tableView.register(SwitchFieldCell.self)
        tableView.register(SegmentSectionHeaderView.self)
        
        view.addSubview(tableView)
    }
}

// MARK: - UITableViewDataSource

extension MainViewController: UITableViewDataSource {
    
    // MARK: Data
    
    func numberOfSections(in tableView: UITableView) -> Int {
        print(dataSource.numberOfSections)
        return dataSource.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.numberOfRows(inSection: section)
    }
    
    
    // MARK: Titles
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return nil
        
//        switch dataSource.section(forIndex: section) {
//        case .<#section#>:
//            return <#Header title#>
//        }
    }

    
    // MARK: Cells
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch dataSource.sectionController(forIndex: indexPath.section) {
        case .content(let sectionController):
            switch sectionController.cellControllers[indexPath.row] {
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
                
            case .textField(let cellController):
                let cell: TextFieldCell = tableView.dequeueReusableCell(for: indexPath)
                cellController.prepare(cell)
                return cell
                
            case .switchField(let cellController):
                let cell: SwitchFieldCell = tableView.dequeueReusableCell(for: indexPath)
                cellController.prepare(cell)
                return cell
            }
        case .segment(let sectionController):
            switch sectionController.selectedIndexCellControllers[indexPath.row] {
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
                
            case .textField(let cellController):
                let cell: TextFieldCell = tableView.dequeueReusableCell(for: indexPath)
                cellController.prepare(cell)
                return cell
                
            case .switchField(let cellController):
                let cell: SwitchFieldCell = tableView.dequeueReusableCell(for: indexPath)
                cellController.prepare(cell)
                return cell
            }
        
        case .carousel(let sectionController):
            let cell: CarouselCell = tableView.dequeueReusableCell(for: indexPath)
            sectionController.cellControllers[indexPath.row].prepare(cell)
            return cell
            
        case .form(let sectionController):
            switch sectionController.cellControllers[indexPath.row] {
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
                
            case .textField(let cellController):
                let cell: TextFieldCell = tableView.dequeueReusableCell(for: indexPath)
                cellController.prepare(cell)
                return cell
                
            case .switchField(let cellController):
                let cell: SwitchFieldCell = tableView.dequeueReusableCell(for: indexPath)
                cellController.prepare(cell)
                return cell
            }
        }
    }
}

// MARK: - UITableViewDelegate

extension MainViewController: UITableViewDelegate {
    
    // MARK: Height
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch dataSource.sectionController(forIndex: indexPath.section) {
        case .content(let sectionController):
            switch sectionController.cellControllers[indexPath.row] {
            case .text:
                return TextCell.defaultHeight
            case .detail:
                return tableView.estimatedRowHeight
            case .image:
                return ImageCell.defaultHeight
            case .textField:
                return TextFieldCell.defaultHeight
            case .switchField:
                return SwitchFieldCell.defaultHeight
            }
        case .segment(let sectionController):
            switch sectionController.selectedIndexCellControllers[indexPath.row] {
            case .text:
                return TextCell.defaultHeight
            case .detail:
                return tableView.estimatedRowHeight
            case .image:
                return ImageCell.defaultHeight
            case .textField:
                return TextFieldCell.defaultHeight
            case .switchField:
                return SwitchFieldCell.defaultHeight
            }
        case .carousel:
            return CarouselCell.defaultHeight
        
        case .form(let sectionController):
            switch sectionController.cellControllers[indexPath.row] {
            case .text:
                return TextCell.defaultHeight
            case .detail:
                return tableView.estimatedRowHeight
            case .image:
                return ImageCell.defaultHeight
            case .textField:
                return TextFieldCell.defaultHeight
            case .switchField:
                return SwitchFieldCell.defaultHeight
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch dataSource.sectionController(forIndex: indexPath.section) {
        case .content(let sectionController):
            switch sectionController.cellControllers[indexPath.row] {
            case .detail:
                return DetailCell.defaultHeight
            default:
                return self.tableView(tableView, heightForRowAt: indexPath)
            }
        case .segment(let sectionController):
            switch sectionController.selectedIndexCellControllers[indexPath.row] {
            case .detail:
                return DetailCell.defaultHeight
            default:
                return self.tableView(tableView, heightForRowAt: indexPath)
            }
        case .carousel:
            return self.tableView(tableView, heightForRowAt: indexPath)
        default:
            return self.tableView(tableView, heightForRowAt: indexPath)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch dataSource.sectionController(forIndex: section) {
        case .segment:
            return SegmentSectionHeaderView.defaultHeight
        default:
            return .leastNormalMagnitude
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return .leastNormalMagnitude
    }
    
    
    // MARK: View
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch dataSource.sectionController(forIndex: section) {
        case .segment(let sectionController):
            let view: SegmentSectionHeaderView = tableView.dequeueReusableView()
            sectionController.prepare(view)
            return view
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
        
//        switch dataSource.section(forIndex: section) {
//        case .<#section#>:
//            return <#Footer view#>
//        }
    }
}
