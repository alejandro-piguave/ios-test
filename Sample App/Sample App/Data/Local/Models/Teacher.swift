//
//  Teacher.swift
//  Sample App
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

enum TeacherType: String {
    case intern, extern
}

class Teacher: CustomStringConvertible {
    var description: String {
        return name
    }
    
    var name: String = ""
    var email: String = ""
    var type: TeacherType = TeacherType.extern
    
    convenience init(_ name: String = "", email: String = "", type: TeacherType = TeacherType.extern) {
        self.init()
        
        self.name = name
        self.email = email
        self.type = type
    }
    
}
