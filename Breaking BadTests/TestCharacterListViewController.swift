//
//  TestCharacterListViewController.swift
//  Breaking BadTests
//
//  Created by Nobat on 06/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
import XCTest
@testable import Breaking_Bad

class CharcterListViewControllerTest: XCTestCase {
    var classUnderTest: CharacterListViewController?
    let service = MockUPJsonService()
    override func setUp() {
        classUnderTest = CharacterListViewController.instantiate()
        classUnderTest?.dataSource.data.value = service.loadJson()
        classUnderTest?.loadViewIfNeeded()
    }
    
    override func tearDown() {
        classUnderTest = nil
        
    }
    
    func testViewControllerHasDataSource(){
       XCTAssertNotNil(classUnderTest?.characterCollectionView.dataSource)
    }
    
    func testViewControllerHasCollectionView(){
        XCTAssertNotNil(classUnderTest?.characterCollectionView)
    }
    
    func testViewControllerHasDelegate()
    {
        XCTAssertNotNil(classUnderTest?.characterCollectionView.delegate)
    }
    
    func testViecontrollerCollectionView(){
        let sections = classUnderTest?.characterCollectionView.numberOfSections
        XCTAssertEqual(sections, 1)
    }
    
}
