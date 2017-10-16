//
//  SecondViewController.swift
//  To Do List
//
//  Created by Gerson Costa on 14/10/2017.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var taskSaved: UILabel!
    
    var listArray = [String] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    

    // Saves the task inside an array and sends a message informing task was saved
    @IBAction func saveBtnPressed(_ sender: UIButton) {
        
        if let task = textField.text {
            
            listArray.append(task)
            
            taskSaved.text = "\(task) was saved!"
            
            taskSaved.isHidden = false
            
            savedTask = listArray
            
            UserDefaults.standard.set(savedTask, forKey: "toDoList")
            
        }
        
    }
    
    // Closes keyboard when it is open and user taps outside the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    // Closes keyboard when user taps the return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
}

