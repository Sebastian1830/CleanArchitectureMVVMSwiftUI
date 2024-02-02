//
//  CharacterFinderFactory.swift
//  CleanArchitectureMvvm
//
//  Created by Sebastian Soto Varas on 29/01/24.
//

import SwiftUI
import Domain
import Data
import Presentation
import UI

struct CharacterFinderFactory {
    static func create(client: HTTPClient) -> CharactersFinderView {
        let dataSource = CharacterDataSource(httpClient: client)
        let repository = CharacterRepository(apiDataSource: dataSource)
        let usecase = SearchCharacters(repository: repository)
        let viewModel = CharactersFinderViewModel(charactersUseCase: usecase)
        return CharactersFinderView(viewModel: viewModel)
    }
}
