//
//  HTTPClient.swift
//
//
//  Created by Sebastian Soto Varas on 25/01/24.
//

import Foundation

public protocol HTTPClient {
    func makeRequest(endpoint: EndpointType) async -> Result<Data, HTTPClientError>
}
