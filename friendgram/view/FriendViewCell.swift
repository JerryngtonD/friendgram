//
//  FriendViewCell.swift
//  friendgram
//
//  Created by Evgeny on 18.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

class FriendViewCell: UITableViewCell {
    static let friendViewCellId = "friendCell"
    static let friendViewCellNibName = "FriendViewCell"

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var secondName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
    

        // Configure the view for the selected state
    }
    
}

extension FriendViewCell {
    static func configure(tableView: UITableView, indexPath: IndexPath, users: [User]) -> UITableViewCell {
          if let cell = tableView.dequeueReusableCell(withIdentifier: friendViewCellId, for: indexPath) as? FriendViewCell {
                    let friendPerCell = users[indexPath.row]
                    
                    cell.firstName.text = friendPerCell.firstName
                    cell.secondName.text = friendPerCell.secondName
                    cell.icon.image = UIImage(named: friendPerCell.icon)
                    
                    return cell
                }
                
                return UITableViewCell()
      }
}
