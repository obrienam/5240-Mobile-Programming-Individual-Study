//
//  ViewController.swift
//  TextViewApp
//
//  Created by Aidan O'Brien on 2/9/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    @IBOutlet var buttonObject: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonTapped(_ sender: Any) {
        if textView.isEditable == true {
            textView.isEditable = false
            textView.backgroundColor=UIColor.yellow
            textView.textColor=UIColor.blue
            textView.font=UIFont(name: "Courier", size: 24)
        } else {
            textView.isEditable=true
            textView.backgroundColor=UIColor.blue
            textView.textColor=UIColor.white
            textView.font=UIFont(name: "Ariel", size: 10)
            
        }
        
    }
    

}

