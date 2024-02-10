//
//  NetworkingFactory.swift
//  CleanArchitectureMvvm
//
//  Created by Sebastian Soto Varas on 29/01/24.
//

import Foundation

struct NetworkingFactory {
    static func setupNetworkingLayer() -> HTTPClient {
        return URLSessionMarvel()
    }
}
