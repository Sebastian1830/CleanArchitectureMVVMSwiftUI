//
//  CharacterCell.swift
//
//
//  Created by Sebastian Soto Varas on 29/01/24.
//

import SwiftUI

struct CharacterCell: View {
    private let character: CharacterItem
    private let size: CGFloat
    
    init(character: CharacterItem, size: CGFloat) {
        self.character = character
        self.size = size
    }
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: character.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo.fill")
            }
            .frame(width: size, height: size)
            .clipShape(.circle)
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 4)
            )
            .shadow(radius: 10)
            Spacer()
            VStack {
                Text(character.name)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .padding(.top, 20)
        .padding(.bottom, 20)
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}
