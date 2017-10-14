//
//  FirstViewController.swift
//  To Do List
//
//  Created by Gerson Costa on 14/10/2017.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "Temp Value!"
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

