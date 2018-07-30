//
//  Requester.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

private let delay: UInt32 = 1
private let type: String = "json"

enum Request: String {
    case main
    
    var resource: String {
        return rawValue
    }
}

struct Requester {
    static func request(_ request: Request) -> Result<JSON> {
        guard
            let path = Bundle.main.path(forResource: request.resource, ofType: type)
            else { return .failure("resource file doesn't exist within bundle") }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let serialized = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            if let json = serialized as? JSON {
                sleep(delay)
                return .success(json)
            }
            else {
                return .failure("Couldn't parse json file")
            }
        }
        catch {
            return .failure("Couldn't parse json file:\n\(error.localizedDescription)")
        }
    }
}
