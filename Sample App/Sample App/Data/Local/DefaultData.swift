//
//  DefaultData.swift
//  Sample App
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

var defaultStudents = [Student("Iván Anti", email: "ivan.anti@gmail.com", imagePath: "img_student_1", birthDate: Calendar.current.date(from: DateComponents(year: 1984, month: 3, day: 10)) ?? Date()),
                       Student("Redmist", email: "redmist@yahoo.mx",imagePath: "img_student_2",birthDate: Calendar.current.date(from: DateComponents(year: 1995, month: 12, day: 1)) ?? Date()),
                       Student("Santiago",email: "santiago.herrera@outook.co",imagePath: "img_student_3",birthDate: Calendar.current.date(from: DateComponents(year: 1985, month: 4, day: 2)) ?? Date()),
                       Student("Ezequiel",email: "eze.eze@gmail.ar",imagePath: "img_student_4",birthDate: Calendar.current.date(from: DateComponents(year: 1994, month: 10, day: 2)) ?? Date()),
                       Student("Manuel Honorato", email: "konnax@gmail.ar",imagePath: "img_student_5",birthDate: Calendar.current.date(from: DateComponents(year: 1986, month: 5, day: 12)) ?? Date()),
                       Student("Joselu",email: "pepelu23@gmail.com",imagePath: "img_student_6",birthDate: Calendar.current.date(from: DateComponents(year: 1993, month: 9, day: 26)) ?? Date()),
                       Student("José Fuenmayor", email: "jose.fuenmayor@gmail.mx",imagePath: "img_student_7",birthDate: Calendar.current.date(from: DateComponents(year: 1987, month: 6, day: 18)) ?? Date()), ]

var defaultTeachers = [Teacher("La de inglés", email:"rgoslinglopez@gmail.com",imagePath: "img_teacher_1", type: TeacherType.extern),
                       Teacher("El nuevo", email:"profenuevo@gmail.com",imagePath: "img_teacher_2", type: TeacherType.intern),
                       Teacher("Horacio Silvestre", email: "horacio.silvestre@gmail.com",imagePath: "img_teacher_3", type: TeacherType.intern),
                       Teacher("Pedro Murcia", email: "pedro.murcia@gmail.com", imagePath: "img_teacher_4",type: TeacherType.extern),
                       Teacher("Ángel Beleña",email:"angel.belena@gmail.com",imagePath: "img_teacher_5", type: TeacherType.extern)]

var defaultSubjects = [
    Subject("Android",imagePath: "img_subject_android",teachers: defaultTeachers.filter({ $0.name.contains("a")
    }), students: defaultStudents.filter({ $0.name.contains("u")
    })),
    Subject("iOS",imagePath: "img_subject_ios",teachers: defaultTeachers.filter({ $0.name.contains("e")
    }), students: defaultStudents.filter({$0.name.contains("o")
    })),
    Subject("Javascript",imagePath: "img_subject_javascript",teachers: defaultTeachers.filter({ $0.name.contains("i")}), students: defaultStudents.filter({ $0.name.contains("i")
    })),
    Subject("Dart",imagePath: "img_subject_dart",teachers: defaultTeachers.filter({ $0.name.contains("o")
    }), students: defaultStudents.filter({$0.name.contains("e")
    })),
    Subject("Python",imagePath: "img_subject_python",teachers: defaultTeachers.filter({ $0.name.contains("u")
    }), students: defaultStudents.filter({ $0.name.contains("a")
    }))
]

