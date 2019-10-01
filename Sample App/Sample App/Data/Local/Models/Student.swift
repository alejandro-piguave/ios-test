//
//  Student.swift
//  Sample App
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Student: Hashable {
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ObjectIdentifier(self))
    }
    
    var subjects: [Subject] {
        get {
            return defaultSubjects.filter( {$0.students.contains(where: {$0.name.elementsEqual(name)})})
        }
    }
    var teachers: [Teacher] {
        get {
            var teachersSet = Set<Teacher>()
            self.subjects.forEach { $0.teachers.forEach({ teachersSet.insert($0) }) }
            return Array(teachersSet).sorted(by: { $0.name > $1.name})
        }
    }
    
    var name: String = ""
    var email: String = ""
    var imagePath: String = ""
    var birthDate: Date = Date()
    
    convenience init(_ name: String = "", email: String = "", imagePath: String = "", birthDate: Date = Date()) {
        self.init()
        
        self.name = name
        self.email = email
        self.imagePath = imagePath
        self.birthDate = birthDate
        
        
        
    }
}
