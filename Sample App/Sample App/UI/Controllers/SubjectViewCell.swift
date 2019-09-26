//
//  SubjectViewCell.swift
//  Sample App
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class SubjectViewCell: UICollectionViewCell {
    
    @IBOutlet weak var subjectView: UIView! {
        didSet {
            // corner radius
            subjectView.layer.cornerRadius = 10
            
            // shadow
            subjectView.layer.shadowColor = UIColor.black.cgColor
            subjectView.layer.shadowOffset = CGSize(width: 3, height: 3)
            subjectView.layer.shadowOpacity = 0.7
            subjectView.layer.shadowRadius = 4.0
        }
    }
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



