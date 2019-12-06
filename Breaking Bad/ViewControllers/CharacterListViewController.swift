//
//  ViewController.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import UIKit
import LNICoverFlowLayout

class CharacterListViewController: UIViewController, StoryBoarded {
    weak var coordinator: MainCoordinator?
    @IBOutlet weak var coverLayout: LNICoverFlowLayout!
    
    @IBOutlet weak var characterCollectionView: UICollectionView!
    
    let dataSource = CharacterCollectionViewDataSource()
    
    lazy var viewModel: BreakingBadViewModel = {
        let breakingBadViewModel = BreakingBadViewModel(dataSource: dataSource)
        return breakingBadViewModel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableViewCell()
        
        setupCoverLayout()
        
        self.characterCollectionView.dataSource = self.dataSource
        self.dataSource.data.bindAndNotify(observer: self){[weak self] in
            DispatchQueue.main.async {
                self?.characterCollectionView.reloadData()
            }
        }
        self.viewModel.fetchData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.title = "Breaking Bad Home"
    }
    
    func configureTableViewCell (){
        let nib = UINib(nibName: "CharacterCollectionViewCell", bundle: Bundle.main)
        characterCollectionView.register(nib, forCellWithReuseIdentifier: "characterCell")
        
    }
    
    private func setupCoverLayout(){
        if let layout = characterCollectionView.collectionViewLayout as? LNICoverFlowLayout {
            layout.scrollDirection = .horizontal
        }
        coverLayout.maxCoverDegree = 45
        coverLayout.coverDensity = 0.05
        coverLayout.minCoverScale = 0.72
        coverLayout.minCoverOpacity = 0.5
        coverLayout.itemSize = characterCollectionView.bounds.size
    }
}

extension CharacterListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedRow = dataSource.data.value[indexPath.row]
        
        coordinator?.characterDetail(bdCharacter: selectedRow)
    }
}
