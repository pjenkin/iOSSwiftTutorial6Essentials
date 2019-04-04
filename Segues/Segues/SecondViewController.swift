//
//  SecondViewController.swift
//  Segues
//
//  Created by Peter Jenkin on 04/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var secondLabel: UILabel!

    @IBOutlet weak var nameLabel: UILabel!
    
    var userName = ""   // user-entered data from first ViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        nameLabel.text = "Your name is: \(userName)"
        print(userName + "...")
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backBtnClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        // return to first vew
    }
}
