//
//  ImageDTO.swift
//
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation

struct ImageDTO: Decodable {
    let path: String
    let ext: String
    
    enum CodingKeys: String, CodingKey {
        case path
        case ext = "extension"
    }
}
