//
//  CharactersFinderView.swift
//
//
//  Created by Sebastian Soto Varas on 28/01/24.
//

import SwiftUI
import Presentation

public struct CharactersFinderView: View {
    @State var characterName: String = ""
    @ObservedObject private var viewModel: CharactersFinderViewModel
    
    public init(viewModel: CharactersFinderViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        VStack {
            NavigationStack {
                List {
                    ForEach(viewModel.characters, id: \.name) { item in
                        CharacterCell(character: item, size: 100)
                    }
                    .background(RoundedRectangle(cornerRadius: 12).fill(.white))
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                }
            }
            .searchable(text: $characterName).onChange(of: characterName) { _, newValue in
                viewModel.fetchCharacter(findBy: newValue)
            }
        }
        .onAppear {
            viewModel.fetchCharacter(findBy: "")
        }
    }
}
