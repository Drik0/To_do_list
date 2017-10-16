//
//  FirstViewController.swift
//  To Do List
//
//  Created by Gerson Costa on 14/10/2017.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit

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
        
        let savedToDoList = UserDefaults.standard.object(forKey: "toDoList")
        if let list = savedToDoList as? NSArray {
            savedTask = list as! [String]
        }
    }
  
    override func viewDidAppear(_ animated: Bool) {
        
        table.reloadData()
        
    }
    
}

