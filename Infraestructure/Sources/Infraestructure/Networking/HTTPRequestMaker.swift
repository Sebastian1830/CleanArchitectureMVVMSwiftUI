//
//  RequestMaker.swift
//
//
//  Created by Sebastian Soto Varas on 26/01/24.
//

import Foundation
import Data

public struct HTTPRequestMaker {
    private let host: String
    private let publicKey: String
    private let secretKey: String
    
    public init(host: String, publicKey: String, secretKey: String) {
        self.host = host
        self.publicKey = publicKey
        self.secretKey = secretKey
    }
    
    func buildRequest(endpoint: EndpointType) -> URL? {
        var urlComponent = URLComponents(string: host + endpoint.path)
        let buildParams = buildSigningParams() + (endpoint.queryItems ?? [])
        urlComponent?.queryItems = buildParams
        return urlComponent?.url
    }
    
    private func buildSigningParams() -> [URLQueryItem] {
        return [
            URLQueryItem(name: "ts", value: "1"),
            URLQueryItem(name: "apikey", value: self.publicKey),
            URLQueryItem(name: "hash", value: self.secretKey)
        ]
    }
    
    
}
