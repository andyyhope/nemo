//
//  ArticleViewController.swift
//  nemo
//
//  Created by Andyy Hope on 4/8/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import UIKit

extension ArticleViewController {
    typealias Section = DataSource.Section
    typealias DataSource = ArticleViewDataSource
    typealias Model = ArticleViewModel
}

final class ArticleViewController: UIViewController {
    
    class func new(entity: ArticleEntity) {
        self.dataSource = DataSource(entity: entity)
    }
    
    // MARK: - Properties
    
    var dataSource: DataSource = DataSource()
    
    
    // MARK: - Computed Properties
    
    var model: Model {
        return dataSource.model
    }
    
    
    // MARK: IBOutlets
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            
            // Register UITableViewCells
        }
    }
    
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareTableViewBindings()
        dataSource.request(<#DataSource.Request#>)
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
        
    }
}

// MARK: - UITableViewDataSource

extension ArticleViewController: UITableViewDataSource {
    
    // MARK: Data
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return <#Number of sections#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch dataSource.section(forIndex: section) {
        case .<#section#>:
            return <#Number of rows in section#>
        }
    }
    
    
    // MARK: Titles
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch dataSource.section(forIndex: section) {
        case .<#section#>:
            return <#Header title#>
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch dataSource.section(forIndex: section) {
        case .<#section#>:
            return <#Footer title#>
        }
    }
    
    // MARK: Cells
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch dataSource.section(forIndex: indexPath.section) {
        case .<#section#>:
            let cell: <#Cell#> = tableView.dequeueReusableCell(for: indexPath)
            dataSource.cellController(for: indexPath).prepareCell(cell)
        
            return cell
        }
    }
}

// MARK: - UITableViewDelegate

extension ArticleViewController: UITableViewDelegate {
    
    // MARK: Height
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch dataSource.section(forIndex: indexPath.section) {
        case .<#section#>:
            return <#Row Height#>
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch dataSource.section(forIndex: section) {
        case .<#section#>:
            return <#Header height#>
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        switch dataSource.section(forIndex: section) {
        case .<#section#>:
            return <#Footer height#>
        }
    }
    
    
    // MARK: Estimated height
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        switch dataSource.section(forIndex: section) {
        case .<#section#>:
            return <#Header height#>
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        switch dataSource.section(forIndex: section) {
        case .<#section#>:
            return <#Footer height#>
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        switch dataSource.section(forIndex: indexPath.section) {
        case .<#section#>:
        return <#Row Height#>
        }
    }
    
    
    // MARK: View
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch dataSource.section(forIndex: section) {
        case .<#section#>:
            return <#Header view#>
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        switch dataSource.section(forIndex: section) {
        case .<#section#>:
            return <#Footer view#>
        }
    }
    
    
    // MARK: Selection
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch dataSource.section(forIndex: indexPath.section) {
        case .<#section#>:
            break
        }
    }
}
