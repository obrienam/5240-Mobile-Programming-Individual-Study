//
//  ViewController.swift
//  PinchCodeApp
//
//  Created by Aidan O'Brien on 2/15/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var topImageView: UIImageView!
    var pinchMe: UIPinchGestureRecognizer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topImageView.isUserInteractionEnabled=true
        topImageView.backgroundColor=UIColor.green
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch))
        topImageView.addGestureRecognizer(pinchGesture)
        pinchMe=pinchGesture
    }
    @objc func handlePinch() {
        topImageView.transform=CGAffineTransform(scaleX: pinchMe!.scale, y: pinchMe!.scale)
    }


}

