//
//  CharacterFinderComposition.swift
//  CleanArchitectureMvvm
//
//  Created by Sebastian Soto Varas on 29/01/24.
//

import SwiftUI
import Domain
import Data
import Presentation
import UI

struct CharacterFinderComposition {
    
    static func create() -> CharactersFinderView {
        let client = NetworkingComposition.setupNetworkingLayer()
        let dataSource = CharacterDataSource(httpClient: client)
        let repository = CharacterRepository(apiDataSource: dataSource)
        let usecase = SearchCharacters(repository: repository)
        let viewModel = CharactersFinderViewModel(charactersUseCase: usecase)
        return CharactersFinderView(viewModel: viewModel)
    }
    
}
