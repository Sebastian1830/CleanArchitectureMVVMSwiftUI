//
//  APIFetchCharacterDataSourceType.swift
//
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation

public protocol APIFetchCharacterDataSourceType {
    func search(byName name: String) async -> Result<[CharacterDTO], HTTPClientError>
}
