//
//  File.swift
//  
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation

struct CharacterDataWrapper: Decodable {
    let data: CharacterDataContainer
    
    enum CodingKeys: String, CodingKey {
        case data
    }
}

struct CharacterDataContainer: Decodable {
    let results: [CharacterDTO]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
}

struct CharacterDTO: Decodable {
    let id: Int
    let name: String
    let thumbnail: ImageDTO
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case thumbnail
    }
}
