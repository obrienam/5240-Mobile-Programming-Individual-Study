//
//  ViewController.swift
//  TableViewCellVisualApp
//
//  Created by Aidan O'Brien on 2/24/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let mainArray = ["Camera","Music","Print","Settings"]
    let detailArray = ["Take a picture","Play an album","Print a document","Change your settings"]
    let imageArray=["icons8-camera-30.png","icons8-music-30.png","icons8-print-30.png","icons8-settings-30.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell =  tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
        
        cell.mainText?.text=self.mainArray[indexPath.row]
        cell.detailText?.text=self.detailArray[indexPath.row]
        cell.imageView?.image=UIImage(named: self.imageArray[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem=mainArray[indexPath.row]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction=UIAlertAction(title: "OK", style: .default, handler: { action-> Void in
            
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion:nil)
    }

    

}

