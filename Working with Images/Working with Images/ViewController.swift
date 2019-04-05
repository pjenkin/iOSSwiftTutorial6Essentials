//
//  ViewController.swift
//  Working with Images
//
//  Created by Peter Jenkin on 05/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIView!
    @IBOutlet weak var imageViewActual: UIImageView!
    
    var myImageInteger = 0  // 0 for Jimi Hendrix
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeBtnClicked(_ sender: Any) {
        
        // if imageViewActual.image == // one way
        if myImageInteger == 0 {
            imageViewActual.image = UIImage(named: "shatner.jpeg")
            myImageInteger += 1
        }
        else
        {
            imageViewActual.image = UIImage(named: "hendrix.jpeg")
            myImageInteger -= 1
            
        }
    }

}

