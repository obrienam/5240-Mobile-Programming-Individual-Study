//
//  ViewController.swift
//  GroupTableViewApp
//
//  Created by Aidan O'Brien on 2/23/20.
//  Copyright © 2020 Aidan O'Brien. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var petArray = [["Mammal", "cat", "dog", "hamster", "gerbil", "rabbit"], ["Bird", "parakeet", "parrot", "canary", "finch"], ["Fish", "tropical fish", "goldfish", "sea horses"], ["Reptile", "turtle", "snake", "lizard"]]
    @IBOutlet var petTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.petTable.isEditing=true
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }

    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray[section].count-1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        if (cell==nil) {
            cell=UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cellID")
        }
    cell?.textLabel?.text=petArray[indexPath.section][indexPath.row + 1]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = petArray[indexPath.section][indexPath.row + 1]
        let alert = UIAlertController(title: "Your Choice",message: "\(selectedItem)",preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        alert.addAction(okAction)
        self.present(alert,animated: true, completion: nil)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return petArray.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return petArray[section][0]
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = self.petArray[sourceIndexPath.row]
        petArray.remove(at: sourceIndexPath.row)
        petArray.insert(movedObject, at: destinationIndexPath.row)
    }

}

