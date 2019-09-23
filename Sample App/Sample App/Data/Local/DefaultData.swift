//
//  DefaultData.swift
//  Sample App
//
//  Created by Dev2 on 23/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

let defaultStudents = [Student("Iván Anti", email: "ivan.anti@gmail.es",birthDate: Calendar.current.date(from: DateComponents(year: 1984, month: 3, day: 10)) ?? Date()),
                       Student("Redmist", email: "redmist@yahoo.mx",birthDate: Calendar.current.date(from: DateComponents(year: 1995, month: 12, day: 1)) ?? Date()),
                       Student("Santiago",email: "santiago.herrera@outook.co",birthDate: Calendar.current.date(from: DateComponents(year: 1985, month: 4, day: 2)) ?? Date()),
                       Student("Ezequiel",email: "eze.eze@gmail.ar",birthDate: Calendar.current.date(from: DateComponents(year: 1994, month: 10, day: 2)) ?? Date()),
                       Student("Manuel Honorato", email: "konnax@gmail.ar",birthDate: Calendar.current.date(from: DateComponents(year: 1986, month: 5, day: 12)) ?? Date()),
                       Student("Joselu",email: "pepelu23@gmail.com",birthDate: Calendar.current.date(from: DateComponents(year: 1993, month: 9, day: 26)) ?? Date()),
                       Student("José Fuenmayor", email: "jose.fuenmayor@gmail.mx",birthDate: Calendar.current.date(from: DateComponents(year: 1987, month: 6, day: 18)) ?? Date()), ]

let defaultTeachers = [Teacher("Horacio Silvestre", type: TeacherType.extern),
                       Teacher("El nuevo", type: TeacherType.intern),
                       Teacher("La de inglés", type: TeacherType.intern),
                       Teacher("Ana Concha", type: TeacherType.extern),
                       Teacher("Ángel Beleña", type: TeacherType.extern)]

let subjects = [
    Subject("Alemán",teachers: defaultTeachers.filter({ $0.name.contains("a")
    }), students: defaultStudents.filter({ $0.name.contains("u")
    })),
    Subject("Filosofía",teachers: defaultTeachers.filter({ $0.name.contains("e")
    }), students: defaultStudents.filter({$0.name.contains("o")
    })),
    Subject("Programación I",teachers: defaultTeachers.filter({ $0.name.contains("i")}), students: defaultStudents.filter({ $0.name.contains("i")
    })),
    Subject("Cálculo I",teachers: defaultTeachers.filter({ $0.name.contains("o")
    }), students: defaultStudents.filter({$0.name.contains("e")
    })),
    Subject("Inglés",teachers: defaultTeachers.filter({ $0.name.contains("u")
    }), students: defaultStudents.filter({ $0.name.contains("a")
    }))
]
