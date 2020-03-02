//
//  DetailViewController.swift
//  GroupTableViewApp
//
//  Created by Aidan O'Brien on 3/2/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var detailLabel: UILabel!
    var detailString: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel?.text=detailString
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
