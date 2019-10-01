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
        
        cell.setData(defaultTeachers[indexPath.row])
        return cell
    }
    
}

extension TeachersViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController,
            let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell)
            else{
                return
        }
        
        let teacher = defaultTeachers[indexPath.row]
        destination.teacher = teacher
        
    }
}
