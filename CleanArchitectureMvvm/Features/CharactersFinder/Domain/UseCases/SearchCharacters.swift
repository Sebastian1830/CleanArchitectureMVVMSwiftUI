//
//  SearchCharacters.swift
//
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation
import Dependency

struct SearchCharacters: SearchCharactersType {
    @Dependency(\.characterRepository) private var repository: SearchCharactersRepositoryType
    
    func execute(byName name: String) async -> Result<[Character], MarvelError> {
        let result = await repository.search(byName: name)
        switch result {
        case .success(let success):
            return .success(success.sortByName)
        case .failure(let error):
            return .failure(error)
        }
    }
}
