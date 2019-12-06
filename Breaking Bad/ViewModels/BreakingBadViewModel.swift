//
//  BreakingBadViewModel.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
class BreakingBadViewModel{
    weak var dataSource: GenericDataSource<BreakingBadCharacter>?
    let service = Webservice()
    
    init(dataSource: GenericDataSource<BreakingBadCharacter>?) {
        self.dataSource = dataSource
    }
    
    func fetchData(){
        service.getBdData(){result in
            switch result {
            case.success(let bdModel):
              
                self.dataSource?.data.value = bdModel
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
