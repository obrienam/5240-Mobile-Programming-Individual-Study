//
//  SecondViewController.swift
//  NavigationButtonApp
//
//  Created by Aidan O'Brien on 3/1/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func doneTapped(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Message", message: "Done button tapped", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            
        })
        alert.addAction(okAction)
        self.present(alert,animated: true, completion: nil)
    }
}
