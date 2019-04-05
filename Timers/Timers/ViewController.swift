//
//  ViewController.swift
//  Timers
//
//  Created by Peter Jenkin on 05/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        counter = 10
        timerLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
        // 1 second, repeating, select timerFunction as event on timer 'tick'
    }

    //override func didReceiveMemoryWarning() {
    //    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}

    
    func timerFunction()
    {
        counter -= 1
        timerLabel.text = String(counter)
        print("Timer is runnning" + String(counter))
        if counter == 0
        {
            timer.invalidate()
            timerLabel.text = "Time's up!"
            // stop counting down at zero
        }
    }

}

