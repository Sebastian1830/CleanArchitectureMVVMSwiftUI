//
//  Character.swift
//  
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import UIKit

struct Character {
    var id: Int
    var name: String
    var image: String
}

extension [Character] {
    var sortByName: [Character] {
        self.sorted { $0.name < $1.name }
    }
}
