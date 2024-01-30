//
//  CharacterRepository.swift
//
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation
import Domain

// Repository: Orquesta los datos y los mapea de acuerdo a su necesidad
public class CharacterRepository: SearchCharactersRepositoryType {
    private let apiDataSource: APIFetchCharacterDataSourceType
    
    public init(apiDataSource: APIFetchCharacterDataSourceType) {
        self.apiDataSource = apiDataSource
    }
    
    public func search(byName name: String) async -> Result<[Character], MarvelError> {
        let result = await apiDataSource.search(byName: name)
        
        switch result {
        case .success(let response):
            let charactersMapper = response.map { $0.mapperToCharacter }
            return .success(charactersMapper)
        case .failure(let error):
            return .failure(.init(description: error.status))
        }
    }
}
