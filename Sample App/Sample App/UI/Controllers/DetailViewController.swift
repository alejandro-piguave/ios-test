//
//  DetailViewController.swift
//  Sample App
//
//  Created by Dev2 on 27/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var secondaryLabel: UILabel!
    
    @IBOutlet weak var nameLabel1: UILabel!
    @IBOutlet weak var nameLabel2: UILabel!
    
    @IBOutlet var collectionViews: Array<UICollectionView>!
    
    var subject: Subject? = nil
    var teacher: Teacher? = nil
    var student: Student? = nil
    
    
    @IBAction func deleteElement(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHeader()
        configureCollectionViews()
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    func configureHeader() {
        if let trueStudent = student {
            mainImageView.image = UIImage(named: trueStudent.imagePath)
            mainLabel.text = trueStudent.name
            secondaryLabel.text = trueStudent.email
            nameLabel1.text = "Teachers"
            nameLabel2.text = "Subjects"
        } else if let trueTeacher = teacher {
            mainImageView.image = UIImage(named: trueTeacher.imagePath)
            mainLabel.text = trueTeacher.name
            secondaryLabel.text = trueTeacher.email
            nameLabel1.text = "Subjects"
            nameLabel2.text = "Students"
        } else if let trueSubject = subject {
            mainImageView.image = UIImage(named: trueSubject.imagePath)
            mainLabel.text = trueSubject.name
            nameLabel1.text = "Teachers"
            nameLabel2.text = "Students"
        }
    }
    func configureCollectionViews() {
        for collectionView in collectionViews {
            collectionView.dataSource = self
            collectionView.delegate = self
        }
        
    }
}

extension DetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let trueStudent = student {
            switch collectionView.tag {
            case 0:
                return trueStudent.teachers.count
            case 1:
                return trueStudent.subjects.count
            default: return 0
            }
        } else if let trueTeacher = teacher {
            switch collectionView.tag {
            case 0:
                return trueTeacher.subjects.count
            case 1:
                return trueTeacher.students.count
            default: return 0
            }
        } else if let trueSubject = subject {
            switch collectionView.tag {
            case 0:
                return trueSubject.numTeachers
            case 1:
                return trueSubject.numStudents
            default: return 0
            }
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubjectViewCell", for: indexPath)
            as! SubjectViewCell
        
        
        if let trueStudent = student {
            switch collectionView.tag {
            case 0:
                let teacher = trueStudent.teachers[indexPath.row]
                cell.setData(name: teacher.name, imagePath: teacher.imagePath)
            case 1:
                let subject = trueStudent.subjects[indexPath.row]
                cell.setData(name: subject.name, imagePath: subject.imagePath)
            default:
                return UICollectionViewCell()
            }
            
        } else if let trueTeacher = teacher {
            switch collectionView.tag {
            case 0:
                let subject = trueTeacher.subjects[indexPath.row]
                cell.setData(name: subject.name, imagePath: subject.imagePath)
            case 1:
                let student = trueTeacher.students[indexPath.row]
                cell.setData(name: student.name, imagePath: student.imagePath)
            default:
                return UICollectionViewCell()
            }
            
        } else if let trueSubject = subject {
            switch collectionView.tag {
            case 0:
                let teacher = trueSubject.teachers[indexPath.row]
                cell.setData(name: teacher.name, imagePath: teacher.imagePath)
            case 1:
                let student = trueSubject.students[indexPath.row]
                cell.setData(name: student.name, imagePath: student.imagePath)
            default:
                return UICollectionViewCell()
            }
            
        }
        
        return cell
    }
    
    
}
