//
//  SubjectViewCell.swift
//  Sample App
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class SubjectViewCell: UICollectionViewCell {
    
    @IBOutlet weak var subjectView: UIView!
    @IBOutlet weak var subjectImage: UIImageView!
    @IBOutlet weak var subjectNameLabel: UILabel!
    
    override func prepareForReuse() {
        subjectImage.image = nil
        subjectNameLabel.text = nil
    }
    
    func setData(_ subject: Subject) {
        subjectNameLabel.text = subject.name
        subjectImage.image = UIImage(named: "img_subject_\(subject.name.lowercased())")
    }
}



