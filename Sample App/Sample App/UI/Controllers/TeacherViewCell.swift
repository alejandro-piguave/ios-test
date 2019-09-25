//
//  TeacherViewCell.swift
//  Sample App
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class TeacherViewCell: UITableViewCell {
    
    @IBOutlet weak var teacherView: UIView!
    @IBOutlet weak var teacherImage: UIImageView!
    @IBOutlet weak var teacherNameLabel: UILabel!
    @IBOutlet weak var teacherMailLabel: UILabel!
    
    override func prepareForReuse() {
        teacherImage.image = nil
        teacherNameLabel.text = nil
        teacherMailLabel.text = nil
    }
    
    func setData(_ teacher: Teacher, _ index: Int) {
        teacherNameLabel.text = teacher.name
        teacherMailLabel.text = teacher.email
        teacherImage.image = UIImage(named: "img_teacher_\(index + 1)")
    }
}

