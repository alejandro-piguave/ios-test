//
//  Student.swift
//  Sample App
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Student: CustomStringConvertible {
    var description: String {
        return "Student data: \(name) \(email)"
    }
    
    var name: String = ""
    var email: String = ""
    var birthDate: Date = Date()
    
    convenience init(_ name: String = "", email: String = "", birthDate: Date = Date()) {
        self.init()
        
        self.name = name
        self.email = email
        self.birthDate = birthDate
    }
}
