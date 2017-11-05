//
//  ViewController.swift
//  NumberGame
//
//  Created by Tiffani Fox on 11/3/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    var random : Int = 0
    var num : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        random = Int(arc4random_uniform(100))
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func submit(_ sender: UIButton) {
        num = input.text!
        if Int(input.text!) == random{
        let alert = UIAlertController(title: "Correct!", message: "\(random) was my number!!", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            alert.view.tintColor = UIColor.black
            alert.view.backgroundColor = UIColor.green
        self.present(alert, animated: true, completion: nil)
        }else if Int(input.text!)! < random{
            let alert = UIAlertController(title: "Incorrect!", message: "\(String(describing: num)) is too low!!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            alert.view.tintColor = UIColor.black
            alert.view.backgroundColor = UIColor.red
            self.present(alert, animated: true, completion: nil)
        }
        else if Int(input.text!)! > random{
            let alert = UIAlertController(title: "Incorrect!", message: "\(String(describing: num)) is too high!!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            alert.view.tintColor = UIColor.black
            alert.view.backgroundColor = UIColor.red
            self.present(alert, animated: true, completion: nil)
        }
    }

}

