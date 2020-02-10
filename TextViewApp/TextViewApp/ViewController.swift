//
//  ViewController.swift
//  TextViewApp
//
//  Created by Aidan O'Brien on 2/9/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    @IBOutlet var buttonObject: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.dataDetectorTypes=UIDataDetectorTypes.phoneNumber
        textView.isEditable=false
        textView.isSelectable=true
        textView.text="This is an example of clickable text 7049368675"
    NotificationCenter.default.addObserver(self,selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)    }
    
    @objc func dismissKeyboard() { view.endEditing(true)
    }
    @objc func keyboardWillShow(notification: NSNotification) {
    if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
    if self.view.frame.origin.y == 0 { self.view.frame.origin.y -=      keyboardSize.height
            }
        
        }
    }
    @objc func keyboardWillHide(notification: NSNotification) { if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y = 0 }
        }
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        if textView.isEditable == true {
            textView.isEditable = false
            textView.backgroundColor=UIColor.yellow
            textView.textColor=UIColor.blue
            textView.font=UIFont(name: "Courier", size: 24)
        } else {
            textView.isEditable=true
            textView.backgroundColor=UIColor.blue
            textView.textColor=UIColor.white
            textView.font=UIFont(name: "Ariel", size: 10)
            
        }
        
    }
    

}

