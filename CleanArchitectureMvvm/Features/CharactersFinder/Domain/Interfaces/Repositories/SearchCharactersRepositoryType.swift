//
//  SearchCharactersRepositoryType.swift
//
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation

protocol SearchCharactersRepositoryType {
    func search(byName name: String) async -> Result<[Character], MarvelError>
}
