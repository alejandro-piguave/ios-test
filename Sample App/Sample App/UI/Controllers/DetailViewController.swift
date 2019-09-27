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
    @IBOutlet weak var collectionView1: UICollectionView!
    
    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var collectionView2: UICollectionView!
    
    var mainLabelText: String = ""
    
    @IBAction func deleteElement(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = mainLabelText
    }
    
    func configureMainImageView (_ text: String) {
        mainImageView.image = UIImage(named: text)
    }
    func configureMainLabel (_ text: String) {
        mainLabel.text = text
    }
    func configureSecondaryLabel (_ text: String) {
        secondaryLabel.text = text
    }
    func configureNameLabel1 (_ text: String) {
        nameLabel1.text = text
    }
    func configureNameLabel2 (_ text: String) {
        nameLabel2.text = text
    }

    
}
