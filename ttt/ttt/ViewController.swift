

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var three: UIButton!
    var check = false
    @IBOutlet weak var winner: UILabel!
    
    @IBAction func one(_ sender: UIButton) {
        
        if check == false{
            one.backgroundColor = UIColor.red
            check = true
        } else {
             one.backgroundColor = UIColor.blue
            check = false
        }
        
        updateUI()

    }
    @IBAction func two(_ sender: UIButton) {
        if check == false{
            two.backgroundColor = UIColor.red
            check = true
        } else {
            two.backgroundColor = UIColor.blue
            check = false
        }
        updateUI()

    }
    @IBAction func three(_ sender: UIButton) {
  
        if check == false{
            three.backgroundColor = UIColor.red
            check = true
        } else {
            three.backgroundColor = UIColor.blue
            check = false
        }
    }
    @IBAction func eight(_ sender: UIButton) {
        if check == false{
            eight.backgroundColor = UIColor.red
            check = true
        } else {
            eight.backgroundColor = UIColor.blue
            check = false
        }
        updateUI()

    }
    
    @IBAction func nine(_ sender: UIButton) {
        if check == false{
            nine.backgroundColor = UIColor.red
            check = true
        } else {
            nine.backgroundColor = UIColor.blue
            check = false
        }
        updateUI()

    }
    @IBAction func seven(_ sender: UIButton) {
   
        if check == false{
            seven.backgroundColor = UIColor.red
            check = true
        } else {
            seven.backgroundColor = UIColor.blue
            check = false
        }
        updateUI()

    }
    
    @IBAction func six(_ sender: UIButton) {
   
        if check == false{
            six.backgroundColor = UIColor.red
            check = true
        } else {
            six.backgroundColor = UIColor.blue
            check = false
        }
        updateUI()

    }
    @IBAction func five(_ sender: UIButton) {
    
        if check == false{
            five.backgroundColor = UIColor.red
            check = true
        } else {
            five.backgroundColor = UIColor.blue
            check = false
        }
        updateUI()

    }
    @IBAction func four(_ sender: UIButton) {
    
        if check == false{
            four.backgroundColor = UIColor.red
            check = true
        } else {
            four.backgroundColor = UIColor.blue
            check = false
        }
        updateUI()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        winner.isHidden = true
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func reset(_ sender: UIButton) {
        check = false
        one.backgroundColor = UIColor.lightGray
        two.backgroundColor = UIColor.lightGray
        three.backgroundColor = UIColor.lightGray
        four.backgroundColor = UIColor.lightGray
        five.backgroundColor = UIColor.lightGray
        six.backgroundColor = UIColor.lightGray
        seven.backgroundColor = UIColor.lightGray
        eight.backgroundColor = UIColor.lightGray
        nine.backgroundColor = UIColor.lightGray
        winner.isHidden = true

    }
    func updateUI() {
        if one.backgroundColor == two.backgroundColor  && one.backgroundColor == three.backgroundColor && one.backgroundColor == UIColor.blue {
            winner.isHidden = false
            winner.text = "Congrats blue is the winner!"
        } else if one.backgroundColor ==  four.backgroundColor && one.backgroundColor == seven.backgroundColor && one.backgroundColor ==  UIColor.blue {
            winner.isHidden = false

            winner.text = "Congrats blue is the winner!"
        }
        else if one.backgroundColor ==  five.backgroundColor && one.backgroundColor == nine.backgroundColor && one.backgroundColor == UIColor.blue {
            winner.isHidden = false

            winner.text = "Congrats blue is the winner!"
        }
        else if one.backgroundColor ==  two.backgroundColor && one.backgroundColor == three.backgroundColor && one.backgroundColor == UIColor.red {
            winner.isHidden = false
            winner.text = "Congrats red is the winner!"
        } else if one.backgroundColor == UIColor.red && four.backgroundColor == UIColor.red && seven.backgroundColor == UIColor.red {
            winner.isHidden = false

            winner.text = "Congrats red is the winner!"
        }
        else if one.backgroundColor ==  five.backgroundColor && one.backgroundColor == nine.backgroundColor && one.backgroundColor == UIColor.red {
            winner.isHidden = false

            winner.text = "Congrats red is the winner!"
        } else if four.backgroundColor ==  five.backgroundColor && four.backgroundColor == six.backgroundColor && four.backgroundColor == UIColor.red {
            winner.isHidden = false

            winner.text = "Congrats red is the winner!"
        }
        else if seven.backgroundColor ==  eight.backgroundColor && seven.backgroundColor == nine.backgroundColor && seven.backgroundColor == UIColor.red {
            winner.isHidden = false

            winner.text = "Congrats red is the winner!"

        }else if four.backgroundColor ==  five.backgroundColor && four.backgroundColor == six.backgroundColor && four.backgroundColor == UIColor.blue {
            winner.isHidden = false

            winner.text = "Congrats blue is the winner!"
        }
        else if seven.backgroundColor ==  eight.backgroundColor && seven.backgroundColor == nine.backgroundColor && seven.backgroundColor == UIColor.blue {
            winner.isHidden = false

            winner.text = "Congrats blue is the winner!"
            
        }
        else if two.backgroundColor ==  five.backgroundColor && two.backgroundColor == eight.backgroundColor && two.backgroundColor == UIColor.blue {
            winner.isHidden = false

            winner.text = "Congrats blue is the winner!"
            
        }
        else if three.backgroundColor ==  six.backgroundColor && three.backgroundColor ==   nine.backgroundColor && three.backgroundColor == UIColor.blue {
            winner.isHidden = false

            winner.text = "Congrats blue is the winner!"
            
        }
        else if three.backgroundColor ==  five.backgroundColor && three.backgroundColor == seven.backgroundColor && three.backgroundColor == UIColor.blue {
            winner.isHidden = false

            winner.text = "Congrats blue is the winner!"
            
        }
        else if two.backgroundColor ==  five.backgroundColor && two.backgroundColor == eight.backgroundColor && two.backgroundColor == UIColor.red {
            winner.isHidden = false

            winner.text = "Congrats red is the winner!"
            
        }
        else if three.backgroundColor ==  six.backgroundColor && three.backgroundColor ==  nine.backgroundColor && three.backgroundColor == UIColor.red {
            winner.isHidden = false

            winner.text = "Congrats red is the winner!"
            
        }
        else if three.backgroundColor ==  five.backgroundColor && three.backgroundColor == eight.backgroundColor && three.backgroundColor == UIColor.red {
            winner.isHidden = false

            winner.text = "Congrats red is the winner!"
            
        }
        


    }
//  ViewController.swift
//  ttt
//
//  Created by Tiffani Fox on 11/1/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//
}






