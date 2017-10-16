//
//  FirstViewController.swift
//  To Do List
//
//  Created by Gerson Costa on 14/10/2017.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit
    // Global variable accessible on any view
    var savedTask = [String] ()


class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
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
        // Loads the saved data
        let savedToDoList = UserDefaults.standard.object(forKey: "toDoList")
        if let list = savedToDoList as? NSArray {
            savedTask = list as! [String]
        }
    }
    // Adds the functionality to delete tasks
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            savedTask.remove(at: indexPath.row)
        }
        table.reloadData()
        UserDefaults.standard.set(savedTask, forKey: "toDoList")
    }
    // What happens when this view appears
    override func viewDidAppear(_ animated: Bool) {
        
        table.reloadData()
        
    }
    
}

