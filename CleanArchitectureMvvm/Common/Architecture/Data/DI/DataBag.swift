//
//  DataBag.swift
//  CleanArchitectureMvvm
//
//  Created by Sebastian Soto Varas on 10/02/24.
//

import Foundation
import Dependency

private struct HTTPClientDIKey: DependencyKey {
    static var currentValue: HTTPClient = URLSessionMarvel()
}

extension DependencyValues {
    var httpClient: HTTPClient {
        get { Self[HTTPClientDIKey.self] }
        set { Self[HTTPClientDIKey.self] = newValue }
    }
}
