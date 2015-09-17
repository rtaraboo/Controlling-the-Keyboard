//
//  ViewController.swift
//  Controlling the Keyboard
//
//  Created by Rosario Tarabocchia on 9/10/15.
//  Copyright (c) 2015 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var label: UILabel!
    
    
 
    @IBOutlet var text: UITextField!
    
    
    
    @IBAction func button(sender: AnyObject) {
        
      label.text = text.text
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.text.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

}

