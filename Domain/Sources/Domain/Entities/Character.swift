//
//  Character.swift
//  
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import UIKit

public struct Character {
    public var id: Int
    public var name: String
    public var image: String
    
    public init(id: Int, name: String, image: String) {
        self.id = id
        self.name = name
        self.image = image
    }
}

extension [Character] {
    var sortByName: [Character] {
        self.sorted { $0.name < $1.name }
    }
}
