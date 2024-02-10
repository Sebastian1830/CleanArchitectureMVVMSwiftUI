//
//  CharacterFinderFactory.swift
//  CleanArchitectureMvvm
//
//  Created by Sebastian Soto Varas on 29/01/24.
//

import SwiftUI

struct CharacterFinderFactory {
    static func create() -> CharactersFinderView {
        let viewModel = CharactersFinderViewModel()
        return CharactersFinderView(viewModel: viewModel)
    }
}
