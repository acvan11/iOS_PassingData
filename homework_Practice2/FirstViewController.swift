//
//  ViewController.swift
//  homework_Practice2
//
//  Created by Sky on 9/3/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    var nameText1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped1(_ sender: Any) {
        self.nameText1 = textField1.text!
        performSegue(withIdentifier: "firstToSecond", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        vc.finalName = self.nameText1
    }
}

