//
//  EndpointType.swift
//
//
//  Created by Sebastian Soto Varas on 25/01/24.
//

import Foundation

public protocol EndpointType {
    var path: String { get }
    var method: HTTPMethods { get }
    var queryItems: [URLQueryItem]? { get }
    var version: Version { get }
}

