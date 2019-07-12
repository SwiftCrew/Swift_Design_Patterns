//
//  CellUserList.swift
//  MVC
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import UIKit

class CellUserList: UITableViewCell {

    @IBOutlet weak private var titleLabel: UILabel!
    
    var user: UserList? {
        didSet {
            if let user = user {
                self.titleLabel.text = user.name
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
