//
//  FriendsViewController.swift
//  friendgram
//
//  Created by Evgeny on 18.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController, Storyboarded {
    let FRIEND_VIEW_CELL_ID = "friendCell"
    let FRIEND_VIEW_CELL_NIBNAME = "FriendViewCell"
        
    weak var coordinator: MainCoordinator?
    
    let users: [User] = [
        User(firstName: "Alex", secondName: "Ivanov", icon: "pumpkin"),
        User(firstName: "Boris", secondName: "Polevoy", icon: "viking")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: FRIEND_VIEW_CELL_NIBNAME, bundle: nil), forCellReuseIdentifier: FRIEND_VIEW_CELL_ID)
        
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
        if let cell = tableView.dequeueReusableCell(withIdentifier: FRIEND_VIEW_CELL_ID, for: indexPath) as? FriendViewCell {
            let friendPerCell = users[indexPath.row]
            
            cell.firstName.text = friendPerCell.firstName
            cell.secondName.text = friendPerCell.secondName
            cell.icon.image = UIImage(named: friendPerCell.icon)
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.openUserDetails(user: users[indexPath.row])
    }
}


