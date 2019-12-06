//
//  BreakingBadDataSourceTest.swift
//  Breaking BadTests
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
import XCTest
@testable import Breaking_Bad

class BreakingBadDataSourceTest: XCTestCase {
    var classUnderTest: CharacterCollectionViewDataSource?
    let service = MockUPJsonService()
    var viewController: CharacterListViewController?
    
    override func setUp() {
        super.setUp()
        classUnderTest = CharacterCollectionViewDataSource()
       let bdModel = service.loadJson()
         print(bdModel)
        classUnderTest?.data.value = bdModel
        viewController = CharacterListViewController.instantiate()
        viewController?.dataSource.data.value = bdModel
        viewController?.loadViewIfNeeded()
       
    }
    
    override func tearDown() {
        super.tearDown()
        classUnderTest = nil
    }
    
    func testDataSourceHasData(){
        XCTAssertNotNil(classUnderTest?.data.value)
    }
    
    func testNumberOfItemsInCollectionView(){
        let items = classUnderTest?.collectionView(viewController!.characterCollectionView, numberOfItemsInSection: 0)
        XCTAssertEqual(items, 63)
    }
    
}
