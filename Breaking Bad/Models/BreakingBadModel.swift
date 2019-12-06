//
//  BreakingBadModel.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation

struct BreakingBadModel: Codable {
    let result: [BreakingBadCharacter]
}
struct BreakingBadCharacter: Codable {
        let charID: Int
        let name: String
        let birthday: String
        let occupation: [String]
        let img: String
        let status: String
        let nickname: String
        let appearance: [Int]
        let portrayed: String
        let category: String
        let betterCallSaulAppearance: [Int]
        
        enum CodingKeys: String, CodingKey {
            case charID = "char_id"
            case name, birthday, occupation, img, status, nickname, appearance, portrayed, category
            case betterCallSaulAppearance = "better_call_saul_appearance"
        }
    }

    

    




