//
//  TeachersViewController.swift
//  Sample App
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class TeachersViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
}

extension TeachersViewController: UITableViewDelegate, UITableViewDataSource {
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultTeachers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeacherViewCell", for: indexPath)
            as! TeacherViewCell
        
        cell.setData(defaultTeachers[indexPath.row],indexPath.row)
        
        print("Creating teacher cell number \(indexPath.row)")
        return cell
    }
    
}
