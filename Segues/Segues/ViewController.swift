//
//  ViewController.swift
//  Segues
//
//  Created by Peter Jenkin on 04/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    var name = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromFirstToSecond"  // NB case-sensitive
        {
            let destinationVC = segue.destination as! SecondViewController
            // 'as!' forced/risky casting/conversion https://developer.apple.com/swift/blog/?id=23
            // SecondViewcontroller (segue's destinationVC) will be a constant
            // ... giving access to variables & other members of segue destination ViewController
            // all via prepare
            destinationVC.userName = name       // use local var
            print("preparing-" + name)
        }
    }
    
    // execute segue previously defined on storyboard
    @IBAction func saveBtnClicked(_ sender: Any) {
        name = nameText.text!
        // record in local variable when clicked  (NB had to use implicit '!')
        performSegue(withIdentifier: "fromFirstToSecond", sender: nil)
    }

}

