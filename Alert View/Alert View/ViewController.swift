//
//  ViewController.swift
//  Alert View
//
//  Created by Peter Jenkin on 04/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordAgainText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alertBtnClicked(_ sender: Any) {
        
        
        if userNameText.text == ""
        {
            let alert = UIAlertController(title: "Error - please provide a user name", message: "oh dear", preferredStyle: UIAlertControllerStyle.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else if passwordText.text == ""
        {
            let alert = UIAlertController(title: "Error", message: "oh dear - please provide a password", preferredStyle: UIAlertControllerStyle.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        } else if passwordAgainText.text == ""
        {
            let alert = UIAlertController(title: "Error", message: "oh dear  - please provide the password twice", preferredStyle: UIAlertControllerStyle.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)

        } else if passwordText.text != passwordAgainText.text
        {
            let alert = UIAlertController(title: "Error", message: "oh dear - please ensure that your password is correctly typed twice", preferredStyle: UIAlertControllerStyle.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        let alert = UIAlertController(title: "Error", message: "oh dear", preferredStyle: UIAlertControllerStyle.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }

}

