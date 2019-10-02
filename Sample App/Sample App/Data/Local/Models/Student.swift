//
//  Student.swift
//  Sample App
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Student: Person {
    
    
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
    
    var birthDate: Date = Date()
    
    convenience init(_ name: String = "", email: String = "", imagePath: String = "", birthDate: Date = Date()) {
        self.init(name, email, imagePath)
        
        self.birthDate = birthDate
        
        
        
    }
}
