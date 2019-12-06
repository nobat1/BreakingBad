//
//  LoadMockupJson.swift
//  Breaking BadTests
//
//  Created by Nobat on 06/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
@testable import Breaking_Bad
class MockUPJsonService
{
    func loadJson() -> [BreakingBadCharacter]{
        
        let bundle = Bundle(for: type(of: self))
        guard let fileUrl = bundle.url(forResource: "data", withExtension: "json") else {return []}
        
        do {
            let data = try Data(contentsOf: fileUrl)
           
            let json = try JSONDecoder().decode([BreakingBadCharacter].self, from: data)
            return json
        }catch{
            print(error.localizedDescription)
        }
        return []
    }
}
