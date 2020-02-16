//
//  ViewController.swift
//  AlertControllerApp
//
//  Created by Aidan O'Brien on 2/16/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in
            
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func buttonTapped2(_ sender: UIButton) {
        let alert=UIAlertController(title: "Alert", message: "The world is ending!", preferredStyle: .alert)
        let action=UIAlertAction(title: "Dismiss", style: .default, handler: {action -> Void in})
        alert.addAction(action)
        self.present(alert, animated:true, completion: nil)
    }
    
}

