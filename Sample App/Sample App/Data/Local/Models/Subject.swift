//
//  Subject.swift
//  Sample App
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Subject: CustomStringConvertible{
    var description: String {
        return name
    }
    
    var name: String = ""
    var teachers: [Teacher] = []
    var students: [Student] = []
    var numTeachers: Int {
        return teachers.count
    }
    var numStudents: Int {
        return students.count
    }
    
    convenience init(_ name: String, teachers: [Teacher] = [], students: [Student] = []){
        self.init()
        
        self.name = name
        self.teachers = teachers
        self.students = students
    }
}
