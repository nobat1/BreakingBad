//
//  MockNavigationController.swift
//  Breaking BadTests
//
//  Created by Nobat on 06/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
import UIKit

class MockNavigationController: UINavigationController {
    
    var pushedViewController: UIViewController?
    var poppedViewController: UIViewController?
  
    
    func reset() {
        pushedViewController = nil
        poppedViewController = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        pushedViewController = viewController
        super.pushViewController(viewController, animated: true)
    }
    
    
}
