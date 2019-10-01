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

class Teacher: Hashable {
    
    static func == (lhs: Teacher, rhs: Teacher) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ObjectIdentifier(self))
    }
    
    var subjects: [Subject] {
        get {
            return defaultSubjects.filter( {$0.teachers.contains(where: {$0.name.elementsEqual(name)})})
        }
    }
    var students: [Student] {
        get {
            var studentsSet = Set<Student>()
            self.subjects.forEach{ $0.students.forEach({ studentsSet.insert($0) }) }
            return Array(studentsSet).sorted(by: { $0.name > $1.name})
        }
    }
    
    var name: String = ""
    var email: String = ""
    var type: TeacherType = TeacherType.extern
    var imagePath: String = ""
    
    convenience init(_ name: String = "", email: String = "", imagePath: String, type: TeacherType = TeacherType.extern) {
        self.init()
        
        self.imagePath = imagePath
        self.name = name
        self.email = email
        self.type = type
        
        
    }
    
}
