//
//  ViewController.swift
//  EditRowApp
//
//  Created by Aidan O'Brien on 2/24/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var petArray = ["cat", "dog", "parakeet", "parrot", "canary", "finch", "tropical fish", "goldfish", "sea horses", "hamster", "gerbil", "rabbit", "turtle", "snake", "lizard", "hermit crab"]
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cellID")
        }
        cell?.textLabel?.text=petArray[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = petArray[indexPath.row]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    func displayAlert(location: Int) {
        let alert = UIAlertController(title: "Add", message: "New Pet", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: {(textField) in
            textField.placeholder = "Pet type here"
        })
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            let savedText = alert.textFields![0] as UITextField
            self.petArray.insert(savedText.text ?? "default", at: location)
            self.tableView.reloadData()
            
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { action -> Void in
            
        })
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        self.present(alert,animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let addAction = UIContextualAction(style: .normal, title: "Add"){ (contextualAction,view,boolValue) in
        self.displayAlert(location: indexPath.row) }
        
        let swipeAction = UISwipeActionsConfiguration(actions: [addAction])
                
        
    return swipeAction
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){
            (contextualAction,view,boolValue) in
            self.petArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
        let swipeAction=UISwipeActionsConfiguration(actions:[deleteAction])
        return swipeAction
    }
    
}
