//
//  ViewController.swift
//  ImageViewApp
//
//  Created by Aidan O'Brien on 2/9/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled=true
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            let touch = touches.first
            if touch?.view == imageView {
                print ("Touched")
            }
            else {
            print ("Nothing ")
            }
        }


}

