//
//  FriendViewCell.swift
//  friendgram
//
//  Created by Evgeny on 18.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

class FriendViewCell: UITableViewCell {

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
