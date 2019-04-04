//
//  ViewController.swift
//  Segues
//
//  Created by Peter Jenkin on 04/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // execute segue previously defined on storyboard
    @IBAction func saveBtnClicked(_ sender: Any) {
        performSegue(withIdentifier: "fromFirstToSecond", sender: nil)
    }

}

