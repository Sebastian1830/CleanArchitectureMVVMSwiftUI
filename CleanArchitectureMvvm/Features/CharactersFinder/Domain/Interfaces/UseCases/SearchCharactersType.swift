//
//  SearchCharactersType.swift
//  CleanArchitectureMvvm
//
//  Created by Sebastian Soto Varas on 9/02/24.
//

import Foundation

protocol SearchCharactersType {
    func execute(byName name: String) async -> Result<[Character], MarvelError>
}
