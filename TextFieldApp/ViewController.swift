//
//  ViewController.swift
//  TextFieldApp
//
//  Created by Aidan O'Brien on 2/1/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Adds notification observer for keyboardWillShowNotifications.
        //Points to keyboardWillShow function.
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        //Adds notification observer for keyboardWillHideNotifications.
        //Points to keyboardWillHide function.
        NotificationCenter.default.addObserver(self, selector:
            #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        //Adds gesture recognizer for when user taps outside of text field.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard)); view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
        
    }
    //Dismisses keyboard for when user taps out of field.
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    //Defines the user keyboard based on size of iOS screen.
    @objc func keyboardWillShow(notification: NSNotification) {
    if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 { self.view.frame.origin.y -= keyboardSize.height
            }
        
        }
    }
    @objc func keyboardWillHide(notification: NSNotification) {
        if ((notification.userInfo? [UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue)
            != nil {
                if self.view.frame.origin.y != 0 { self.view.frame.origin.y = 0
                }
            }
        }
}

