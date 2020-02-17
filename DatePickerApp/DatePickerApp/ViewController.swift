//
//  ViewController.swift
//  DatePickerApp
//
//  Created by Aidan O'Brien on 2/16/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myDatePicker: UIDatePicker!
    let dateFormatter: DateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        // Do any additional setup after loading the view.
    }
    func ShowAlert(dateTime : String) {
        let alert = UIAlertController(title: "Selected Date and Time", message: "\(dateTime)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in
            
        })
        alert.addAction(okAction)
        self.present(alert,animated: true, completion: nil)
    }
    

    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from:
            myDatePicker.date)
        ShowAlert(dateTime: selectedDate)
    }
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from: sender.date)
        ShowAlert(dateTime: selectedDate)
    }
}

