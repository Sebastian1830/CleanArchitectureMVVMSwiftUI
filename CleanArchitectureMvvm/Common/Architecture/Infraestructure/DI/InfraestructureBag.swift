//
//  BagDependencies.swift.swift
//  CleanArchitectureMvvm
//
//  Created by Sebastian Soto Varas on 10/02/24.
//

import Foundation
import Dependency

private struct RequestMakerDIKey: DependencyKey {
    static var currentValue = HTTPRequestMaker(
        host: "https://gateway.marvel.com:443/v1/public",
        publicKey: "41673879a3e530b0bdf32717871346ed",
        secretKey: "8a57832929b017b7e864fcd2dd821d3c"
    )
}

private struct URLSessionDIKey: DependencyKey {
    static var currentValue: URLSession = .shared
}

extension DependencyValues {
    var requestMaker: HTTPRequestMaker {
        get { Self[RequestMakerDIKey.self] }
        set { Self[RequestMakerDIKey.self] = newValue }
    }
    
    var urlSession: URLSession {
        get { Self[URLSessionDIKey.self] }
        set { Self[URLSessionDIKey.self] = newValue }
    }
}
