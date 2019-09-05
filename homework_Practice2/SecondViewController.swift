//
//  SecondViewController.swift
//  homework_Practice2
//
//  Created by Sky on 9/3/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var labelText2: UILabel!
    
    @IBOutlet weak var textField2: UITextField!
    
    var finalName = ""
    var hometown = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        labelText2.text = "Hello " + finalName
        
    }
    
    @IBAction func next2Tapped(_ sender: Any) {
        self.hometown = textField2.text!
        performSegue(withIdentifier: "secondToThird", sender: self)
        
    }
    
    // Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondToThird"{
            let vc2 = segue.destination as! ThirdViewController
            vc2.finalHometown = self.hometown
            vc2.finalName2 = self.finalName
        }
    }
    
}
