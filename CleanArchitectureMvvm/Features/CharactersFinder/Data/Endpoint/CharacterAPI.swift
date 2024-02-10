//
//  CharacterAPI.swift
//
//
//  Created by Sebastian Soto Varas on 25/01/24.
//

import Foundation

enum CharacterAPI: EndpointType {
    case characters(findBy: String)
    
    var path: String {
        switch self {
        case .characters:
            return "/characters"
        }
    }
    var method: HTTPMethods {
        switch self {
        case .characters:
            return .get
        }
    }
    var queryItems: [URLQueryItem]? {
        switch self {
        case .characters(let name):
            var params: [URLQueryItem] = []
            if name.isEmpty { return params }
            params.append(.init(name: "nameStartsWith", value: name))
            return params
        }
    }
    var version: Version {
        return .v1
    }
}
