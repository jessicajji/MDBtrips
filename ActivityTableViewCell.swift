//
//  ActivityTableViewCell.swift
//  ThingsToDo
//
//  Created by Mansi Shah on 3/3/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var PlaceName: UILabel!
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
