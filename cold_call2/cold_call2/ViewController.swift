//
//  ViewController.swift
//  cold_call2
//
//  Created by Tiffani Fox on 11/1/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var number: UILabel!
    let quizBank = [
        ("Ross"),( "Rachel"), ("Monica"), ("Pheobe"), ("Chandler"), ("Joey")
    ]
    var currentQuestion = 0
    

    @IBAction func button(_ sender: UIButton) {
        if currentQuestion < quizBank.count - 1{
            currentQuestion += 1
            
        } else{
            currentQuestion = 0
        }
        updateUI()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view, typically from a nib.
    }


func updateUI() {
    name.text = quizBank[currentQuestion]
    number.text = String(arc4random_uniform(5) + 1)
    if number.text == "1" || number.text == "2" {
        number.textColor = UIColor.red
    } else if number.text == "3" || number.text == "4"{
        number.textColor = UIColor.orange
    } else {
        number.textColor = UIColor.green
    }

}
}


