//
//  SubjectsViewController.swift
//  Sample App
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import UIKit

class SubjectsViewController: UIViewController{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        collectionView.reloadData()
    }
}

extension SubjectsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return defaultSubjects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubjectViewCell", for: indexPath)
            as! SubjectViewCell
        
        let subject = defaultSubjects[indexPath.row]
        cell.setData(name: subject.name, imagePath: subject.imagePath)
        
        return cell
    }
    
    func configureCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (UIScreen.main.bounds.width - 16.0) / 2.0
        return CGSize(width: cellWidth, height:  cellWidth * 1.25)
    }
}

extension SubjectsViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController,
        let cell = sender as? UICollectionViewCell,
        let indexPath = collectionView.indexPath(for: cell)
        else{
            return
        }
        
        let subject = defaultSubjects[indexPath.row]
        destination.subject = subject
        
    }
}
