//
//  BreakingBadApiEndPoint.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation

// MARK: BreakingBadAPI Endpoint

class BreakingBadAPIEndpoint: Endpoint {
    
    override init(scheme: String = "https",
                  host: String = "breakingbadapi.com",
                  path: String,
                  queryItems: [URLQueryItem] = []) {
        
        super.init(scheme: scheme,
                   host: host,
                   path: "/api/" + path,
                   queryItems: queryItems)
    }
}

extension BreakingBadAPIEndpoint {
    
    static func breakingBad() -> BreakingBadAPIEndpoint {
        return BreakingBadAPIEndpoint(path: "characters")
    }
}
