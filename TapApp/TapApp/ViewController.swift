//
//  ViewController.swift
//  TapApp
//
//  Created by Aidan O'Brien on 2/14/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelCode: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelCode.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        labelCode.addGestureRecognizer(tapGesture)
        
    }
    @objc func handleTap() {
        print ("Tap on second label detected")
    }
    @IBAction func tapDetected(_ sender: UITapGestureRecognizer) {
        print("Tap detected")
    }
    

}

