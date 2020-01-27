//
//  ViewController.swift
//  ObjectApp
//
//  Created by Aidan O'Brien on 1/25/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func enterBttn(_ sender: Any) {
        textField.text=textField.text?.capitalized
    }
    

}

