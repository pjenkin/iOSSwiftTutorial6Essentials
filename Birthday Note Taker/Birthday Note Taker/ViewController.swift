//
//  ViewController.swift
//  Birthday Note Taker
//
//  Created by Peter Jenkin on 04/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var storedNameLabel: UILabel!
    @IBOutlet weak var storedDateLabel: UILabel!
    
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(birthdayText.text, forKey: "birthday")
        UserDefaults.standard.synchronize()
        // persist data in key/value pairs using UserDefaults https://developer.apple.com/documentation/foundation/userdefaults
        
        storedNameLabel.text = "Stored name: \(nameText.text!)"     // known to exist, hence '!'
        storedDateLabel.text = "Stored name: \(birthdayText.text!)"     // known to exist, hence '!'
    }
    
    @IBAction func deleteButtonClicked(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedDate = UserDefaults.standard.object(forKey: "birthday")
        // retrieve persisted UserDefaults data (name & birthday)
        
        if let newName = storedName as? String {
            // if possible to create storedName, cast to String, from (hopefully non-nil) value retrieved...
            storedNameLabel.text = "Stored Name: \(newName)"
        }
        
        if let newDate = storedDate as? String {
            // if possible to create storedName, cast to String, from (hopefully non-nil) value retrieved...
            storedDateLabel.text = "Stored Date: \(newDate)"
        }

        
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

