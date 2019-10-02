//
//  Person.swift
//  Sample App
//
//  Created by Dev2 on 02/10/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Person: Hashable {
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ObjectIdentifier(self))
    }

    
    var name: String = ""
    var email: String = ""
    var imagePath: String = ""
    
    convenience init(_ name: String = "",_ email: String = "",_ imagePath: String) {
        self.init()
        
        self.imagePath = imagePath
        self.name = name
        self.email = email
    }
    
}
