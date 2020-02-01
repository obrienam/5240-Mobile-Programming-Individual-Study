//
//  ViewController.swift
//  ObjectApp
//
//  Created by Aidan O'Brien on 1/25/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func cap(_ sender: Any) {
        label.text=textField.text?.capitalized
    }
    
    
    

}

