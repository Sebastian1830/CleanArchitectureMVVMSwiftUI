//
//  CharacterItem.swift
//
//
//  Created by Sebastian Soto Varas on 27/01/24.
//

import Foundation
import Domain

public struct CharacterItem {
    public let name: String
    public let image: String
    
    public init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

extension CharacterItem {
    init(from: Character) {
        self.name = from.name
        self.image = from.image
    }
}
