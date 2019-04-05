//
//  ViewController.swift
//  Gesture Recognition
//
//  Created by Peter Jenkin on 05/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var myImageInteger = 0      // 0 for Jimi, 1 for Bill
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self,
                action:#selector(ViewController.changePicture))
        // self is ViewController; NB hash to mark as selector for an action
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    
    func changePicture ()
    {
        print("user tapped on picture")
        if myImageInteger == 0
        {
            imageView.image = UIImage(named: "shatner.jpeg")
            nameLabel.text = "Bill"
            myImageInteger += 1
        }
        else
        {
            imageView.image = UIImage(named: "hendrix.jpeg")
            nameLabel.text = "Jimi"
            myImageInteger -= 1
        }
    }

    //override func didReceiveMemoryWarning() {
      //  super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}


}

