//
//  FirstViewController.swift
//  To Do List
//
//  Created by Gerson Costa on 14/10/2017.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // This array will hold all the information the user put on the next screen
    var savedTask = [String] ()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return savedTask.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = savedTask[indexPath.row]
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assignArray()
        
    }
    // Imports to the savedTask array the information stored in listArray
    func assignArray() {
        
        let otherVC = SecondViewController()
        savedTask = otherVC.listArray
        
    }

}

