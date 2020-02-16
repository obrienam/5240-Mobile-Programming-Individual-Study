//
//  ViewController.swift
//  RotateApp
//
//  Created by Aidan O'Brien on 2/15/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var topImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rotationDetected(_ sender: UIRotationGestureRecognizer) {
        topImageView.transform=CGAffineTransform(rotationAngle: sender.rotation)
    }
    
}

