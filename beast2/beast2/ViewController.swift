 //
//  ViewController.swift
//  beast2
//
//  Created by Tiffani Fox on 11/6/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    var tasks = ["Exercise for 30 minutes", "Wireframe for some project", "Do laundry"]
    @IBOutlet weak var text: UITextField!
  
    @IBOutlet weak var tableView: UITableView!
    @IBAction func button(_ sender: UIButton) {
        tasks.append((text.text)!)
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
     return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        // set text label to the model that is corresponding to the row in array
        cell.textLabel?.text = tasks[indexPath.row]
        // return cell so that Table View knows what to render in each row
        return cell
    }
}


