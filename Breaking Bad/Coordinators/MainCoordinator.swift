//
//  MainCoordinator.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
import UIKit
class MainCoordinator: NSObject, Coordinator {
    var childCoordinators = [Coordinator] ()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    func start() {
        let characterListVC = CharacterListViewController.instantiate()
        characterListVC.coordinator = self
        navigationController.navigationBar.barTintColor = UIColor(rgb: 0x405939)
        self.navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.init(rgb: 0xfbfffa)]
        navigationController.pushViewController(characterListVC, animated: true)
    }
    
    func characterDetail(bdCharacter: BreakingBadCharacter){
        let characterDetailVc = CharacterDetailViewController.instantiate()
         characterDetailVc.bdCharacter = bdCharacter
        characterDetailVc.coordinator = self
        navigationController.navigationBar.barTintColor = UIColor(rgb: 0x405939)
         self.navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.init(rgb: 0xfbfffa)]
        navigationController.navigationBar.tintColor = .white
        navigationController.pushViewController(characterDetailVc, animated: true)
    }
    func childDidFinish(_ child: Coordinator?){
        for(index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
            
        }
    }
}


