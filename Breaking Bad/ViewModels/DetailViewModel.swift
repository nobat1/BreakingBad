//
//  DetailViewModel.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
class DetailViewModel{
    weak var dataSource: GenericDataSource<BreakingBadCharacter>?
   
    
    init(dataSource: GenericDataSource<BreakingBadCharacter>?) {
        self.dataSource = dataSource
    }
    
    init(model: GenericDataSource<BreakingBadCharacter>?) {
        self.dataSource = model
    }
    
    func fetchData(bdModel: [BreakingBadCharacter]){
        self.dataSource?.data.value = bdModel
    }
}
