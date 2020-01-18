//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Aidan O'Brien on 1/17/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let label = UILabel()
        label.frame = CGRect(x: 125, y: 125, width: 200, height: 80)
        label.text = "This is a label"
        view.addSubview(label)
        
        let button = UIButton()
        button.frame=CGRect(x: 125, y: 300, width: 80, height: 80)
        button.setTitle("Button", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
    }


}

