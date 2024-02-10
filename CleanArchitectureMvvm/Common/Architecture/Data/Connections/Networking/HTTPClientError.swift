//
//  File.swift
//  
//
//  Created by Sebastian Soto Varas on 23/01/24.
//

import Foundation

public struct HTTPClientError: Error, Decodable {
    let code: Int
    let status: String
    
    public init(code: Int, status: String) {
        self.code = code
        self.status = status
    }
    
    public static let generic: HTTPClientError = .init(code: 600, status: "Error generico")
    public static let badURL: HTTPClientError = .init(code: 600, status: "URL incorrecta")
    public static let responseError: HTTPClientError = .init(code: 600, status: "Error parsing response")
    public static let parsingError: HTTPClientError = .init(code: 600, status: "Error parsing error")
}
