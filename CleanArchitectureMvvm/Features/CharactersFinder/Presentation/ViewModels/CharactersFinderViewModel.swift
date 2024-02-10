//
//  CharactersFinderViewModel.swift
//
//
//  Created by Sebastian Soto Varas on 27/01/24.
//

import Foundation
import Observation
import Dependency

@Observable
class CharactersFinderViewModel {
    @ObservationIgnored
    @Dependency(\.characterUC) private var charactersUseCase: SearchCharactersType
    
    var characters: [CharacterItem] = []
    var isLoading: Bool?
    var messageError: String?
    
    func fetchCharacter(findBy name: String) {
        isLoading = true
        Task {
            let result = await charactersUseCase.execute(byName: name)
            switch result {
            case .success(let response):
                Task { @MainActor in
                    characters = response.map { CharacterItem(from: $0) }
                    isLoading = false
                }
            case .failure(let error):
                Task { @MainActor in
                    messageError = error.description
                    isLoading = false
                }
            }
        }
    }
}
