//
//  HTTPStatusCode.swift
//
//
//  Created by Sebastian Soto Varas on 26/01/24.
//

import Foundation

struct HTTPStatusCode {
    static let informationResponseRange = 100...199
    static let successfulResponseRange = 200...299
    static let redirectionMessageRange = 300...399
    static let clientErrorRange = 400...499
    static let serverErrorRange = 500...599
}
