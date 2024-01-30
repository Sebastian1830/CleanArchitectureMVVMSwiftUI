//
//  CharactersFinderViewModel.swift
//
//
//  Created by Sebastian Soto Varas on 27/01/24.
//

import Foundation
import Domain

public class CharactersFinderViewModel: ObservableObject {
    @Published public var characters: [CharacterItem] = []
    @Published public var isLoading: Bool?
    @Published public var messageError: String?
    
    private let charactersUseCase: SearchCharactersType
    
    public init(charactersUseCase: SearchCharactersType) {
        self.charactersUseCase = charactersUseCase
    }
    
    public func fetchCharacter(findBy name: String) {
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
