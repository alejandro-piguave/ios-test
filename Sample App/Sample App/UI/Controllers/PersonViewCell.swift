//
//  TableViewCell.swift
//  Sample App
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class PersonViewCell: UITableViewCell {
    
    @IBOutlet weak var personView: UIView! {
        didSet {
            // corner radius
            personView.layer.cornerRadius = 10
            
            // shadow
            personView.layer.shadowColor = UIColor.black.cgColor
            personView.layer.shadowOffset = CGSize(width: 3, height: 3)
            personView.layer.shadowOpacity = 0.7
            personView.layer.shadowRadius = 4.0
        }
    }
    
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var personMailLabel: UILabel!
    
    override func prepareForReuse() {
        personImage.image = nil
        personNameLabel.text = nil
        personMailLabel.text = nil
    }
    
    func setData(_ person: Person) {
        personNameLabel.text = person.name
        personMailLabel.text = person.email
        personImage.image = UIImage(named: person.imagePath)
    }
}

