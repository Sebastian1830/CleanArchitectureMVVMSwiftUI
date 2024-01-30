//
//  SearchCharacters.swift
//
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation

public protocol SearchCharactersType {
    func execute(byName name: String) async -> Result<[Character], MarvelError>
}

public class SearchCharacters: SearchCharactersType {
    private let repository: SearchCharactersRepositoryType
    
    public init(repository: SearchCharactersRepositoryType) {
        self.repository = repository
    }
    
    public func execute(byName name: String) async -> Result<[Character], MarvelError> {
        let result = await repository.search(byName: name)
        switch result {
        case .success(let success):
            return .success(success.sortByName)
        case .failure(let error):
            return .failure(error)
        }
    }
}
