//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Aidan O'Brien on 1/17/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelResult: UILabel!
    @IBOutlet var text_Display: UITextField!
    
    @IBAction func changeButton(_ sender: UIButton) {
        labelResult.text=text_Display.text?.capitalized
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
    }


}

