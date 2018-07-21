//
//  Requester.swift
//  nemo
//
//  Created by Andyy Hope on 21/7/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

enum Request: String {
    case main
    
    var json: JSON {
        guard
            let path = Bundle.main.path(forResource: rawValue, ofType: "json")
            else { fatalError() }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let serialized = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            if let json = serialized as? JSON {
                return json
            }
            else {
                fatalError()
            }
        }
        catch {
            fatalError()
        }
    }
}
