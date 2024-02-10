//
//  APIFetchCharacterDataSourceType.swift
//
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation

protocol APIFetchCharacterDataSourceType {
    func search(byName name: String) async -> Result<[CharacterDTO], HTTPClientError>
}
