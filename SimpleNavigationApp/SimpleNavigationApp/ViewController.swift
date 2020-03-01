//
//  ViewController.swift
//  SimpleNavigationApp
//
//  Created by Aidan O'Brien on 2/29/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.prompt="Prompt text"
        navigationItem.title = "Title text"
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "firstLink", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! SecondViewController
        nextVC.navigationItem.title="New prompt here"
        nextVC.receivedString="Passed title here"
    }

}

