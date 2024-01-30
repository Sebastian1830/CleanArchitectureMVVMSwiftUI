//
//  URLSessionMarvel.swift
//
//
//  Created by Sebastian Soto Varas on 25/01/24.
//

import Foundation
import Data

public class URLSessionMarvel: HTTPClient  {
    private let urlSession: URLSession
    private let requestMaker: HTTPRequestMaker
    
    public init(urlSession: URLSession = .shared, requestMaker: HTTPRequestMaker) {
        self.urlSession = urlSession
        self.requestMaker = requestMaker
    }
    
    public func makeRequest(endpoint: EndpointType) async -> Result<Data, HTTPClientError> {
        guard let url = requestMaker.buildRequest(endpoint: endpoint) else {
            return .failure(.badURL)
        }
        
        do {
            let (data, response) = try await urlSession.data(from: url)
            guard let response = response as? HTTPURLResponse else { return .failure(.responseError) }
            
            if let error = HTTPStatusCodeHandler.catchError(from: response, with: data) {
                return .failure(error)
            }
            
            return .success(data)
        } catch {
            return .failure(.generic)
        }
    }
}
