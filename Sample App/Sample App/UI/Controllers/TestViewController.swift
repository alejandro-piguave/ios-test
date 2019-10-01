//
//  TestViewController.swift
//  Sample App
//
//  Created by Dev2 on 01/10/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class TestViewControler: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.tabBar.isHidden = true
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        
        tabBarController?.tabBar.isHidden = false
    }
}
