//
//  NetworkingComposition.swift
//  CleanArchitectureMvvm
//
//  Created by Sebastian Soto Varas on 29/01/24.
//

import Foundation
import Data
import Infraestructure

struct NetworkingComposition {
    static func setupNetworkingLayer() -> HTTPClient {
        let requestMaker = HTTPRequestMaker(
            host: "https://gateway.marvel.com:443/v1/public",
            publicKey: "41673879a3e530b0bdf32717871346ed",
            secretKey: "8a57832929b017b7e864fcd2dd821d3c"
        )
        return URLSessionMarvel(requestMaker: requestMaker)
    }
}
