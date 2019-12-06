//
//  GenericDataSource.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

class GenericDataSource<T>: NSObject{
    var data: GenericObserverable<[T]> = GenericObserverable([])
}

class BreakingBadDataSource: GenericDataSource<BreakingBadCharacter>, UITableViewDataSource {
    
    private var selectedCallback = ((IndexPath) -> Void)?.self
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bdCell", for: indexPath) as? BreakingBadTableViewCell
        let bdCharacters = data.value[indexPath.row]
        let url = URL(string: bdCharacters.img)
        cell?.chaterImageView.kf.setImage(with: url)
        cell?.chaterNameLabel.text = bdCharacters.name
        return cell ?? UITableViewCell()
    }
    

    func updateCell(cell: UITableViewCell){
       
    }
}
