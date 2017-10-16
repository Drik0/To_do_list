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
    
    var timer = Timer()
    
    var trackTimer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    

    // Saves the task inside an array and sends a message informing task was saved
    @IBAction func saveBtnPressed(_ sender: UIButton) {
        
        if let task = textField.text {
            
            savedTask.append(task)
            
            taskSaved.text = "\(task) was saved!"
            
            taskSaved.isHidden = false
            
            UserDefaults.standard.set(savedTask, forKey: "toDoList")
            
        }
        
        textField.text = ""
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(hideMessage), userInfo: nil, repeats: true)
    }
    
    @objc func hideMessage() {
        trackTimer = trackTimer + 1
        if trackTimer == 3 {
            taskSaved.isHidden = true
            trackTimer = 0
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

