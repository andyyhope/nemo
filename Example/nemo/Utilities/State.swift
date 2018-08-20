//
//  State.swift
//  nemo
//
//  Created by Andyy Hope on 3/4/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum State {
    
    case loading
    case completed
    case failed(Failure)
}

extension State {
    
    enum Failure {
        case unknown(String)
        case generic
        case json
        case network
        
        var description: String {
            switch self {
            case .unknown(let error):
                return error
            case .generic:
                return "Something went wrong"
            case .json:
                return "The json couldn't be parsed"
            case .network:
                return "Network connection timed out"
            }
        }
    }
}

