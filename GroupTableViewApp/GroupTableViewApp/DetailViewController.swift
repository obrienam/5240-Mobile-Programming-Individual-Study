//
//  DetailViewController.swift
//  GroupTableViewApp
//
//  Created by Aidan O'Brien on 3/2/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var btnText: UIBarButtonItem!
    var animal="placeholder"
    @IBOutlet var detailLabel: UITextField!
    var detailString: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.isUserInteractionEnabled=false
        detailLabel?.text=detailString
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil); NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard)); view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    

    
    
    
    @IBAction func editButton(_ sender: UIBarButtonItem) {
        if detailLabel.isUserInteractionEnabled{
        detailLabel.isUserInteractionEnabled=false
        btnText.title="Edit"
        }
        else{
        detailLabel.isUserInteractionEnabled=true
        btnText.title="Done"
        }
        
    }
    
    @IBAction func showAlert(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Alert!", message: "You chose \(animal)", preferredStyle: .alert)
        
        
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            
            
        })
        
        alert.addAction(okAction)
       
        self.present(alert,animated: true, completion: nil)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    @objc func keyboardWillShow(notification: NSNotification) {
    
    }
    @objc func keyboardWillHide(notification: NSNotification) { if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil {
    
        }


}
}
