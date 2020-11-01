//
//  FriendsViewController.swift
//  friendgram
//
//  Created by Evgeny on 18.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

final class FriendsTableViewController: UITableViewController, Storyboarded {
    let friendViewCellId = "friendCell"
    let friendViewCellNibName = "FriendViewCell"
    
    weak var coordinator: MainCoordinator?
    
    let users: [User] = [
        User(firstName: "Alex", secondName: "Ivanov", icon: "pumpkin"),
        User(firstName: "Boris", secondName: "Polevoy", icon: "viking")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: friendViewCellNibName, bundle: nil), forCellReuseIdentifier: friendViewCellId)
        
        self.tableView.separatorStyle = .none
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

// MARK: Tableview delegate and datasource

extension FriendsTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return FriendViewCell.configure(tableView: tableView, indexPath: indexPath, users: users)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.openUserDetails(user: users[indexPath.row])
    }
}


