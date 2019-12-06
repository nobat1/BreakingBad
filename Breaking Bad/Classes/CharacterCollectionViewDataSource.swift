//
//  CharacterCollectionViewDataSource.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
import Kingfisher
import UIKit
class CharacterCollectionViewDataSource: GenericDataSource<BreakingBadCharacter>, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.value.count
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "characterCell", for: indexPath) as? CharacterCollectionViewCell else {return UICollectionViewCell()}
        let bdCharacter = data.value[indexPath.item]
         let url = URL(string: bdCharacter.img)
        let processor = ResizingImageProcessor(referenceSize: CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.5))
        cell.characterImageView.kf.setImage(with: url, options:[.processor(processor)])
        cell.characterLabel.text = bdCharacter.name
        return cell
    }
    
    
}
