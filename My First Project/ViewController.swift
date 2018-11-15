//
//  ViewController.swift
//  My First Project
//
//  Created by Sheju Sathyanesan on 11/13/18.
//  Copyright © 2018 Sheju Sathyanesan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate { //UITextFieldDelegate - For Return key to disappear
    var buttonCount = 0
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func buttonTapped(_ sender: Any) {
        view.backgroundColor = UIColor.red
        myLabel.text = "Sheju"
    }
    @IBAction func buttonConted(_ sender: Any) {
        buttonCount = buttonCount + 1
        //print(buttonCount)
        if buttonCount >= 10 {
           view.backgroundColor = UIColor.red
            myLabel.text = "10"
        }
    }
    
    // Any time you want to change the label - make sure delete from the code as well as delete from the connection inspector
    // Xcode 9 Essential Training
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "Hello from Code!"
        textField.becomeFirstResponder() // helpe to hide the Keyboard from the screen by touching on white space
        textField.delegate = self // this is very important to the Return key to disappear
        //view.backgroundColor = UIColor.red // change background color
        //myLabel.text = "sheju is cool" // assign value to var
        
        
        
        
    }
    
    @IBAction func buttonWasTapped(_ sender: Any) {
        label.text = "Hello \(textField.text!)" // Exclamation ! at the end of the text unwrap the option in stimulator....
        textField.resignFirstResponder() // To dismiss the Keyboard
        
    }
    
    // helpe to hide the Keyboard from the screen by touching on white space
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    
    // this is very important to the Return key to disappear
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    
    
    // To rename the return key in the Keyboard - Go to Main.storyboard file - select the text field and head over to the Attribute instructor - Find the Return key dropdown - select - DONE
    
    
}

// Model-view-Controller - is design pattern 
    // Design pattern - Philosophy
    // Model = Data
    // View -UL
    // Controller - Logic - What happens when a button is clicked - Logic passes that information to Model

//ff
// First Responders - Helps to hide the Keyboard
