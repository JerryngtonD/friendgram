//
//  MainMenuViewController.swift
//  friendgram
//
//  Created by Evgeny on 25.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

final class MainMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, Storyboarded {
    let APP_SECTION_CELL_ID = "sectionCell"
    let APP_SECTION_VIEW_CELL_NIBNAME = "AppSectionViewCell"
    
    
    weak var coordinator: MainCoordinator?
    
    var profileShort: ProfileShort?
    

    @IBOutlet weak var userIcon: UIImageView!
    
    @IBOutlet weak var nickName: UILabel!
    
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var lastLoginDate: UILabel!
    
    @IBOutlet weak var goToProfileButton: UIButton!
    
    @IBOutlet weak var sectionsTableView: UITableView!
    
    
    private let sections: [AppSection] = [
        AppSection(sectionIcon: "friends-section-icon", sectionTitle: "Friends")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sectionsTableView.register(UINib(nibName: APP_SECTION_VIEW_CELL_NIBNAME, bundle: nil), forCellReuseIdentifier: APP_SECTION_CELL_ID)
        
        sectionsTableView.delegate = self
    
        sectionsTableView.dataSource = self
        
        userIcon.contentMode = .center
        userIcon.frame = self.view.bounds
        
        userIcon.image = UIImage(named: profileShort?.icon ?? "incognito")
        nickName.text = profileShort?.combinedNickname
        status.text = profileShort?.status
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        lastLoginDate.text = dateFormatter.string(from: (profileShort?.lastLoginDate ?? Date()))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: APP_SECTION_CELL_ID, for: indexPath) as? AppSectionViewCell {
                let sectionPerCell = sections[indexPath.row]
                cell.sectionName.text = sectionPerCell.sectionTitle
            
                cell.sectionIcon.contentMode = .scaleAspectFit
            
                cell.sectionIcon.image = UIImage(named: sectionPerCell.sectionIcon)
            
           
                return cell
            }
        
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section = sections[indexPath.row]
        
        doActionBySection(sectionTitle: section.sectionTitle)
    }
    
    private func doActionBySection(sectionTitle: String) {
        // MARK: coordinator calls
        
        if sectionTitle == "Friends" {
            coordinator?.openFriends()
        }
    }
}
