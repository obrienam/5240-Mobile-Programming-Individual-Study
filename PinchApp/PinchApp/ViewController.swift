//
//  ViewController.swift
//  PinchApp
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

    @IBAction func pinchDetected(_ sender: UIPinchGestureRecognizer) {
        topImageView.transform=CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
    
}

