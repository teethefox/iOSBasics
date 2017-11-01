//
//  ViewController.swift
//  cold_call
//
//  Created by Tiffani Fox on 11/1/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nextbutton: UIButton!
    let quizBank = [
        ("Ross"),( "Rachel"), ("Monica"), ("Pheobe"), ("Chandler"), ("Joey")
    ]
    var currentQuestion = 0

    @IBAction func nextbutton(_ sender: UIButton) {
    
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
        
    }

    func updateUI() {
        nameLabel.text = quizBank[currentQuestion]

    }


   
    
    

    
}
