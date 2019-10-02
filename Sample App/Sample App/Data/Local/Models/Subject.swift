//
//  Subject.swift
//  Sample App
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Subject: Hashable{
    var name: String = ""
    var imagePath: String = ""
    var teachers: [Teacher] = []
    var students: [Student] = []
    var numTeachers: Int {
        return teachers.count
    }
    var numStudents: Int {
        return students.count
    }
    
    static func == (lhs: Subject, rhs: Subject) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ObjectIdentifier(self))
    }
    
    convenience init(_ name: String,imagePath: String, teachers: [Teacher] = [], students: [Student] = []){
        self.init()
        
        self.imagePath = imagePath
        self.name = name
        self.teachers = teachers
        self.students = students
    }
}
