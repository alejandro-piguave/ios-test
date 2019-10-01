//
//  TableViewCell.swift
//  Sample App
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class StudentViewCell: UITableViewCell {
    
    @IBOutlet weak var studentView: UIView! {
        didSet {
            // corner radius
            studentView.layer.cornerRadius = 10
            
            // shadow
            studentView.layer.shadowColor = UIColor.black.cgColor
            studentView.layer.shadowOffset = CGSize(width: 3, height: 3)
            studentView.layer.shadowOpacity = 0.7
            studentView.layer.shadowRadius = 4.0
        }
    }
    
    @IBOutlet weak var studentImage: UIImageView!
    @IBOutlet weak var studentNameLabel: UILabel!
    @IBOutlet weak var studentMailLabel: UILabel!
    
    override func prepareForReuse() {
        studentImage.image = nil
        studentNameLabel.text = nil
        studentMailLabel.text = nil
    }
    
    func setData(_ student: Student) {
        studentNameLabel.text = student.name
        studentMailLabel.text = student.email
        studentImage.image = UIImage(named: student.imagePath)
    }
}

