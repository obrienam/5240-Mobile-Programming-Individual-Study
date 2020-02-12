//
//  ViewController.swift
//  IBActionApp
//
//  Created by Aidan O'Brien on 2/11/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelResult.frame.size.width=120
    }
    @IBAction func buttonTapped(_ sender: Any) {
        switch (sender as AnyObject).tag {
            case 1:
                labelResult.text="Button 1"
        case 2:
                labelResult.text="Button 2"
            default:
                labelResult.text="Default"
        }
    }
    @IBAction func buttonRespond(_ sender: UIButton) {
        switch sender.tag {
            case 1:
                labelResult.text=sender.titleLabel?.text
            case 2:
                labelResult.text=sender.titleLabel?.text
            default:
                labelResult.text="Default"
        }
    }
    

}

