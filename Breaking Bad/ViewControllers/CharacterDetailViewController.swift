//
//  CharacterDetailViewController.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import UIKit
import Kingfisher
class CharacterDetailViewController: UIViewController, StoryBoarded {
    
    @IBOutlet weak var tableView: UITableView!
    weak var coordinator: MainCoordinator?
    var bdCharacter: BreakingBadCharacter?
    let dataSource = DetailViewDataSource()
    lazy var viewModel: DetailViewModel = {
        let detailViewModel = DetailViewModel(dataSource: dataSource)
        return detailViewModel
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
       self.configureTableViewCell()
        self.tableView.dataSource = dataSource
        guard let dataModel = bdCharacter else {return}
        self.viewModel.fetchData(bdModel: [dataModel])
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //self.loadCharacterDetail()
        self.title = "Character Detail"
        
            DispatchQueue.main.async {
                
                self.tableView.reloadData()
            }
        
    }
    
    
    func configureTableViewCell (){
        let nib = UINib(nibName: "DetailTableViewCell", bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: "detailCell")
        
    }

}
