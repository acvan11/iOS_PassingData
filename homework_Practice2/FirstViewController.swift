//
//  ViewController.swift
//  homework_Practice2
//
//  Created by Sky on 9/3/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField1: UITextField!
    @IBAction func unwindToFirst(segue: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonTapped1(_ sender: Any) {
        // Programmatic transition
        let vc = storyboard?.instantiateViewController(withIdentifier: "firstToNext") as! SecondViewController
        vc.finalName = textField1.text!
        present(vc, animated: true, completion: nil)
//
//        self.nameText1 = textField1.text!
//        performSegue(withIdentifier: "firstToSecond", sender: self)
    }
    
    // Segue
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "firstToSecond" {
//            let vc = segue.destination as! SecondViewController
//            vc.finalName = self.nameText1
//        }
//    }
}

