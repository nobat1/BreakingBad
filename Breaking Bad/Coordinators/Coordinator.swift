//
//  Coordinator.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
import UIKit
protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set}
    var navigationController: UINavigationController {get set}
    func start()
}
