//
//  MainViewController.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

extension MainViewController {
//    typealias Section = DataSource.Section
    typealias DataSource = MainViewDataSource
    typealias Model = MainViewModel
}

final class MainViewController: UIViewController {
    
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
        
        prepareTableViewBindings()
        
        dataSource.request(.initial) { [weak self] in
            self?.tableView.reloadData()
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
    
    private func prepareTableViewBindings() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - UITableViewDataSource

extension MainViewController: UITableViewDataSource {
    
    // MARK: Data
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataSource.Section.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
        
//        switch dataSource.section(forIndex: section) {
//        case .main:
//            return <#Number of rows in section#>
//        }
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
        return UITableViewCell()
        
//        switch dataSource.section(forIndex: indexPath.section) {
//        case .main:
//            let cell: <#Cell#> = tableView.dequeueReusableCell(for: indexPath)
//            dataSource.cellController(for: indexPath).prepareCell(cell)
//
//            return cell
//        }
    }
}

// MARK: - UITableViewDelegate

extension MainViewController: UITableViewDelegate {
    
    // MARK: Height
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
        
//        switch dataSource.section(forIndex: indexPath.section) {
//        case .<#section#>:
//            return <#Row Height#>
//        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
        
//        switch dataSource.section(forIndex: section) {
//        case .<#section#>:
//            return <#Header height#>
//        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
        
//        switch dataSource.section(forIndex: section) {
//        case .<#section#>:
//            return <#Footer height#>
//        }
    }
    
    
    // MARK: View
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
        
//        switch dataSource.section(forIndex: section) {
//        case .<#section#>:
//            return <#Header view#>
//        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
        
//        switch dataSource.section(forIndex: section) {
//        case .<#section#>:
//            return <#Footer view#>
//        }
    }
    
    
    // MARK: Selection
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        switch dataSource.section(forIndex: indexPath.section) {
//        case .<#section#>:
//            break
//        }
    }
}
