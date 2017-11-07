 //
 //  ViewController.swift
 //  beast2
 //
 //  Created by Tiffani Fox on 11/6/17.
 //  Copyright © 2017 Tiffani Fox. All rights reserved.
 //
 
 import UIKit
 
 class ViewController: UIViewController, UITableViewDelegate {
    var puppynames = ["Nyle", "Remi", "Jael", "Jovie", "Israel", "Torryn", "Ezel", "Macai", "Myla", "Nyssah", "Logan", "Beau"]
    
    @IBOutlet var tableView: UITableView!
    @IBAction func button(_ sender: UIButton) {
        tableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
 }
 
 extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return puppynames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        // set text label to the model that is corresponding to the row in array
        cell.textLabel?.text = puppynames[indexPath.row]
        cell.detailTextLabel?.text = ( String(arc4random_uniform(95) + 5) ) + " years old"

        // return cell so that Table View knows what to render in each row
        return cell
    }
 }
 
 



