//
//  DetailViewDataSource.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher
class DetailViewDataSource: GenericDataSource<BreakingBadCharacter>, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as? DetailTableViewCell else {return UITableViewCell()}
        let bdCharacter = data.value[indexPath.row]
        let url = URL(string: bdCharacter.img)
        let processor = ResizingImageProcessor(referenceSize: CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.8))
       
        cell.characterImageView.kf.setImage(with: url, options:[.processor(processor)])
        cell.characterNameLabel.text = bdCharacter.name
        let occupation = bdCharacter.occupation.joined(separator: ",\n")
        cell.characterOccupation.text = occupation
        cell.characterStatusLabel.text = bdCharacter.status
        cell.characterNickNameLabel.text = bdCharacter.nickname
        let seasonAppeared = bdCharacter.appearance.map{String($0)}
        cell.seasonAppearedLabel.text = seasonAppeared.joined(separator: ", \n")
        return cell
   }
    
    func boldLabel(label:String) {
        
    }
}
