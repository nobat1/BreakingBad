//
//  BreakingBadTableViewCell.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import UIKit

class BreakingBadTableViewCell: UITableViewCell {

    @IBOutlet weak var chaterNameLabel: UILabel!
    @IBOutlet weak var chaterImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
