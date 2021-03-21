//
//  ViewController.swift
//  newApp
//
//  Created by Hannah Chiu on 2021/3/18.
//

import UIKit

struct newItem: Decodable {
  var stationID: String
  var stationName: String
  var stationAddress: String
}

class ViewController: UIViewController {

  @IBOutlet weak var stationID: UILabel!
  @IBOutlet weak var stationName: UILabel!
  @IBOutlet weak var stationAddress: UILabel!
  
    

    
  override func viewDidLoad() {
    super.viewDidLoad()
    getItem()
  }
  
  
  func getItem() {
    let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
    var task = URLRequest(url: url)
    task.httpMethod = "GET"
    
    let session = URLSession.shared
    
    let dataTask = session.dataTask(with: task, completionHandler: {(data, response, error) -> Void in
        
        guard let data = data else { return }
    
    do{
        
        if let newItem = try? JSONDecoder().decode(newItem.self, from: data){
            print(newItem)
            DispatchQueue.main.async {
                                     self.stationID.text = newItem.stationID
                                     self.stationName.text = newItem.stationName
                                     self.stationAddress.text = newItem.stationAddress
            }
        }else {
            print(error!)
      
        }
            
        }
    })
    dataTask.resume()
    }
}
      


  
  
 
  

