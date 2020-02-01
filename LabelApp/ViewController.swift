//
//  ViewController.swift
//  LabelApp
//
//  Created by Aidan O'Brien on 1/31/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeLabel(_ sender: UIButton) {
        
        myLabel.text = "Text created by Swift \ncode using Xcode"
        myLabel.numberOfLines = 2
        myLabel.font = UIFont(name: "Courier", size: 14)
        myLabel.backgroundColor = UIColor.yellow
        myLabel.isEnabled = false

        }
    

}

