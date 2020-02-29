//
//  ViewController.swift
//  SingleCollectionViewApp
//
//  Created by Aidan O'Brien on 2/28/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{
    var cellColor=true
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath)
        
        if cellColor {
            cell.backgroundColor = UIColor.yellow
        } else {
            cell.backgroundColor = UIColor.green
        }
        cellColor = !cellColor
        return cell
    }
    
    

}

