//
//  CharacterDetail.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import UIKit

class CharacterDetail: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var characterImageView: UIImageView!
    
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterOccupationLabel: UILabel!
    
    @IBOutlet weak var characterStatusLabel: UILabel!
    @IBOutlet weak var characterNicknameLabel: UILabel!
    @IBOutlet weak var seasonAppearanceLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    override required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    
   private func setupView(){
        Bundle.main.loadNibNamed("CharacterDetail", owner: self, options: nil)
    addSubview(contentView)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    
    }
}
