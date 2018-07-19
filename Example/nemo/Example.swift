//
//  ExampleData.swift
//  nemo
//
//  Created by Andyy Hope on 1/4/18.
//  Copyright © 2018 Andyy Hope. All rights reserved.
//

import Foundation

struct Example {
    
    static var data: Company {
        return Company(
            company: "Punters",
            location: "Australia",
            color: .green,
            departments: departments)
    }
    
    private static var departments: [Department] {
        return [
        Department(
            date: Date(),
            language: .swift,
            engineers: [andyy, spenser, agnes, greg]),
        Department(
            date: Date(),
            language: .javascript,
            engineers: [ash, brock, misty, joy])
        ]
    }
    
    
    // People
    
    // Swift
    
    private static var andyy: Engineer {
        return Engineer(
            firstName: "Andyy",
            secondName: "Hope",
            age: 30,
            language: .swift,
            title: .junior)
    }
    
    private static var spenser: Engineer {
        return Engineer(
            firstName: "Spenser",
            secondName: "Poletti",
            age: 27,
            language: .swift,
            title: .intern)
    }
    
    private static var greg: Engineer {
        return Engineer(
            firstName: "Greg",
            secondName: "Heo",
            age: 22,
            language: .swift,
            title: .intern)
    }
    
    private static var agnes: Engineer {
        return Engineer(
            firstName: "Agnes",
            secondName: "Vasarhelyi",
            age: 25,
            language: .swift,
            title: .senior)
    }
    
    // Javascript
    
    private static var ash: Engineer {
        return Engineer(
            firstName: "Ash",
            secondName: "Ketchum",
            age: 30,
            language: .javascript,
            title: .junior)
    }
    
    private static var brock: Engineer {
        return Engineer(
            firstName: "Brock",
            secondName: "Rock",
            age: 27,
            language: .javascript,
            title: .intern)
    }
    
    private static var misty: Engineer {
        return Engineer(
            firstName: "Misty",
            secondName: "Togepi",
            age: 22,
            language: .javascript,
            title: .intern)
    }
    
    private static var joy: Engineer {
        return Engineer(
            firstName: "Joy",
            secondName: "Nurse",
            age: 25,
            language: .javascript,
            title: .senior)
    }
}
