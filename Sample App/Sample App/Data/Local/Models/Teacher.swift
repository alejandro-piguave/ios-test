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

class Teacher: Person {
    
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
    
    var type: TeacherType = TeacherType.extern
    
    convenience init(_ name: String = "", email: String = "", imagePath: String, type: TeacherType = TeacherType.extern) {
        self.init(name, email, imagePath)

        self.type = type
    }
    
}
