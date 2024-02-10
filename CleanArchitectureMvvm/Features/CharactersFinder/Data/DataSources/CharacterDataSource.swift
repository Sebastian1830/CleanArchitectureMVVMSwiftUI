//
//  File.swift
//  
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation
import Dependency

struct CharacterDataSource {
    @Dependency(\.httpClient) private var httpClient: HTTPClient
}

extension CharacterDataSource: APIFetchCharacterDataSourceType {
    func search(byName name: String) async -> Result<[CharacterDTO], HTTPClientError> {
        let result = await httpClient.makeRequest(endpoint: CharacterAPI.characters(findBy: name))
        switch result {
        case .success(let success):
            guard let charactersWrapper = try? JSONDecoder().decode(CharacterDataWrapper.self, from: success) else {
                return .failure(.parsingError)
            }
            return .success(charactersWrapper.data.results)
        case .failure(let error):
            return .failure(error)
        }
    }
}
