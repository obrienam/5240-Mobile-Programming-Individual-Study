//
//  ViewController.swift
//  ControllApp
//
//  Created by Aidan O'Brien on 2/10/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonObject: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func touchInside(_ sender: UIButton) {
        buttonObject.setTitle("New",for: UIControl.State.normal)
    }
}

