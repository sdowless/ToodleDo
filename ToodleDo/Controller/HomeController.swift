//
//  HomeController.swift
//  ToodleDo
//
//  Created by Stephen Dowless on 10/6/21.
//

import UIKit

class HomeController: UITableViewController {
    
    // MARK: - Properties
    
    private let reuseIdentifier = "TaskCell"
        
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    // MARK: - Helpers
    
    func configure() {
        tableView.register(TaskCell.self, forCellReuseIdentifier: reuseIdentifier)
    }
}

// MARK: UITableViewDelegate

extension HomeController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        CategoriesHeaderView()
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}

// MARK: UITableViewDataSource

extension HomeController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! TaskCell
        return cell
    }
}
