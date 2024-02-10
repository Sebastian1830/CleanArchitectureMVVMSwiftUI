//
//  CharacterItem.swift
//
//
//  Created by Sebastian Soto Varas on 27/01/24.
//

import Foundation

struct CharacterItem {
    public let name: String
    public let image: String
}

extension CharacterItem {
    init(from: Character) {
        self.name = from.name
        self.image = from.image
    }
}
