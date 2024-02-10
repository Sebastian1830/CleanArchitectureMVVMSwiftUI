//
//  BagDependencies.swift
//  CleanArchitectureMvvm
//
//  Created by Sebastian Soto Varas on 10/02/24.
//

import Foundation
import Dependency

private struct CharacterDataSourceDIKey: DependencyKey {
    static var currentValue: APIFetchCharacterDataSourceType = CharacterDataSource()
}

private struct CharacterRepositoryDIKey: DependencyKey {
    static var currentValue: SearchCharactersRepositoryType = CharacterRepository()
}

private struct CharacterUseCaseDIKey: DependencyKey {
    static var currentValue: SearchCharactersType = SearchCharacters()
}

extension DependencyValues {
    var characterDS: APIFetchCharacterDataSourceType {
        get { Self[CharacterDataSourceDIKey.self] }
        set { Self[CharacterDataSourceDIKey.self] = newValue }
    }
    
    var characterRepository: SearchCharactersRepositoryType {
        get { Self[CharacterRepositoryDIKey.self] }
        set { Self[CharacterRepositoryDIKey.self] = newValue }
    }
    
    var characterUC: SearchCharactersType {
        get { Self[CharacterUseCaseDIKey.self] }
        set { Self[CharacterUseCaseDIKey.self] = newValue }
    }
}
