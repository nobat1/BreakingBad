//
//  DetailTableViewCell.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var characterImageView: UIImageView!
    
    @IBOutlet weak var characterNameLabel: UILabel!
    
    @IBOutlet weak var characterOccupation: UILabel!

    @IBOutlet weak var characterStatusLabel: UILabel!
    
    @IBOutlet weak var characterNickNameLabel: UILabel!
    
    @IBOutlet weak var seasonAppearedLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
