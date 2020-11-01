//
//  AppSectionViewCell.swift
//  friendgram
//
//  Created by Evgeny on 25.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

class AppSectionViewCell: UITableViewCell {

    @IBOutlet weak var sectionIcon: UIImageView!
    
    
    @IBOutlet weak var sectionName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
