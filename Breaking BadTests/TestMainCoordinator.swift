//
//  TestMainCoordinator.swift
//  Breaking BadTests
//
//  Created by Nobat on 06/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
import XCTest
@testable import Breaking_Bad
class MainCoordinatorTest: XCTestCase {
    var coordinatorUnderTest: MainCoordinator?
    var navigationController = MockNavigationController()
    
    override func setUp() {
        super.setUp()
        coordinatorUnderTest = MainCoordinator(navigationController: navigationController)
    }
    
    override func tearDown(){
        super.tearDown()
        coordinatorUnderTest = nil
    }
    
    func testStart(){
        coordinatorUnderTest?.start()
        XCTAssertTrue(navigationController.pushedViewController is CharacterListViewController)
    }
    
    func testShowDetailViewController()
    {
        coordinatorUnderTest?.characterDetail(bdCharacter: BreakingBadCharacter(charID: 1, name: "John", birthday: "11-01-1998", occupation: ["Actor","Writter"], img: "", status: "Alive", nickname: "Johnny", appearance: [1,2], portrayed: "Johnt", category: "Comedt", betterCallSaulAppearance: [1,2]))
        XCTAssertTrue(navigationController.pushedViewController is CharacterDetailViewController)
    }
}
