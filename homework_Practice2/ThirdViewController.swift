//
//  ThirdViewController.swift
//  homework_Practice2
//
//  Created by Sky on 9/3/19.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var label2Text: UILabel!
    var finalHometown = ""
    var finalName2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
        swipe.direction = .right
        view.addGestureRecognizer(swipe)
        
        label2Text.text = "Hello " + finalName2 + ". I think " + (finalHometown) + " is a very beautiful place and I wish I could travel there someday"


        // Do any additional setup after loading the view.
    }
    

    @IBAction func doneTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToFirst", sender: nil)
    }
    
    @objc func swipeRight() {
        performSegue(withIdentifier: "unwindToFirst", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "unwindToFirst" {
            let firstvc = segue.destination as! FirstViewController
            firstvc.textField1.text = ""
        }
    }
}
