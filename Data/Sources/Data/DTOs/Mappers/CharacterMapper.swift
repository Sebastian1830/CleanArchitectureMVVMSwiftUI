//
//  CharacterMapper.swift
//
//
//  Created by Sebastian Soto Varas on 28/01/24.
//

import Foundation
import Domain

extension CharacterDTO {
    var mapperToCharacter: Character {
        .init(
            id: self.id,
            name: self.name,
            image: self.thumbnail.path + "." + self.thumbnail.ext
        )
    }
}
