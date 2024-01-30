//
//  MarvelError.swift
//
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation

public struct MarvelError: Error {
    public let description: String
    
    public init(description: String) {
        self.description = description
    }
}
