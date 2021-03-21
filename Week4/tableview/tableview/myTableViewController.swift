//
//  ViewController.swift
//  tableview
//
//  Created by Hannah Chiu on 2021/3/17.
//

import UIKit

class myTableViewController: UITableViewController {
 
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.rowHeight = 100.0

  }
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
 
 
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "tableRow", for: indexPath)
    
   
    if let label = cell.viewWithTag(99) as? UILabel {
       label.text = "This is section \(indexPath.section), row \(indexPath.row)"
    }
    return cell
  }
  

  
 


}

