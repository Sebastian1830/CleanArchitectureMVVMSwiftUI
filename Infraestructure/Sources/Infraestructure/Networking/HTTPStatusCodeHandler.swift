//
//  HTTPStatusCodeHandler.swift
//
//
//  Created by Sebastian Soto Varas on 26/01/24.
//

import Foundation
import Data

public struct HTTPStatusCodeHandler {
    static func catchError(from response: HTTPURLResponse, with data: Data) -> HTTPClientError? {
        switch response.statusCode {
        case HTTPStatusCode.informationResponseRange:
            return nil
        case HTTPStatusCode.successfulResponseRange:
            return nil
        default:
            guard let errorParsed = try? JSONDecoder().decode(HTTPClientError.self, from: data) else {
                return .parsingError
            }
            return errorParsed
        }
    }
}
