//
//  SecondViewController.swift
//  SimpleNavigationApp
//
//  Created by Aidan O'Brien on 2/29/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var labelDisplay: UILabel!
    var receivedString = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDisplay.text=receivedString
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
