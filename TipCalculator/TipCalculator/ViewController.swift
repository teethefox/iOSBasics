//
//  ViewController.swift
//  TipCalculator
//
//  Created by Tiffani Fox on 11/2/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var total3: UILabel!
    @IBOutlet weak var total2: UILabel!
    @IBOutlet weak var total1: UILabel!
    @IBOutlet weak var tip3: UILabel!
    @IBOutlet weak var tip2: UILabel!
    @IBOutlet weak var tip1: UILabel!
    @IBOutlet weak var perc3: UILabel!
    @IBOutlet weak var perc2: UILabel!
    @IBOutlet weak var perc1: UILabel!
    @IBOutlet weak var meal: UILabel!
    @IBOutlet weak var decimal: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var groupslide: UISlider!
    @IBOutlet weak var tipslide: UISlider!
    
    
    
    var changedtotal : String = ""
    var mult : Double = 0
    var total: String = ""
    var num: String  = ""
    
    @IBAction func one(_ sender: UIButton) {
        num = "1"
        calculate()

    }
    @IBAction func two(_ sender: UIButton) {
        num = "2"
        calculate()
    }
    @IBAction func three(_ sender: UIButton) {
        
        num = "3"
        calculate()

    }
    @IBAction func four(_ sender: UIButton) {
        num = "4"
        calculate()

    }
    @IBAction func five(_ sender: UIButton) {
        num = "5"
        calculate()

    }
    @IBAction func six(_ sender: UIButton) {
        num = "6"
        calculate()

    }
    @IBAction func seven(_ sender: UIButton) {
        num = "7"
        calculate()

    }
    @IBAction func eight(_ sender: UIButton) {
        num = "8"
        calculate()

    }
    @IBAction func nine(_ sender: UIButton) {
        num = "9"
        calculate()

    }
    
    @IBAction func clear(_ sender: UIButton) {
        num = "0"
        total = ""
        meal.text = num

    }
    
    @IBAction func zero(_ sender: UIButton) {
        num = "0"
        calculate()

    }
    @IBAction func decimal(_ sender: UIButton) {
        num = "."
        calculate()

    }
    @IBAction func groupslide(_ sender: UISlider) {
        changedtotal = String(Float(total)! / groupslide.value )
        
        mult = Double(Double(tipslide.value / 100) * Double(changedtotal)!)
        tip1.text = String(format: "%.2f", arguments: [mult])
        tip2.text = String(format: "%.2f", arguments: [mult + 5])
        tip3.text = String(format: "%.2f", arguments: [mult + 10])
        total1.text = String(format: "%.2f", arguments: [mult + Double(changedtotal)!])
        total2.text = String(format: "%.2f", arguments: [mult + Double(changedtotal)! + 5])
        total3.text = String(format: "%.2f", arguments: [mult + Double(changedtotal)! + 10])
        
    }
    @IBAction func tipslide(_ sender: UISlider) {
       print (Int(tipslide.value))
        perc1.text = String(Int(tipslide.value))
        perc2.text = String(Int(tipslide.value + 5))
        perc3.text = String(Int(tipslide.value + 10))
        mult = Double(Double(tipslide.value / 100) * Double(total)!)
        tip1.text = String(format: "%.2f", arguments: [mult])
        tip2.text = String(format: "%.2f", arguments: [mult + 5])
        tip3.text = String(format: "%.2f", arguments: [mult + 10])
        total1.text = String(format: "%.2f", arguments: [mult + Double(total)!])
        total2.text = String(format: "%.2f", arguments: [mult + Double(total)! + 5])
        total3.text = String(format: "%.2f", arguments: [mult + Double(total)! + 10])
    }
    
    func calculate() {
        
        total += num
        meal.text = total
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

