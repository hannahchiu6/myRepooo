//
//  ViewController.swift
//  SimpleApp
//
//  Created by Hannah Chiu on 2021/3/6.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorViewChange()
      
    }
    var txt  = "Hhhha"
    @IBOutlet weak var textLabel: UILabel!
    
    var i = 0

    let myText: [String] = ["Loremip sumdo lorsitamet,consect eturadipis cinge lit.Maecen ast empus.","Contraryto popularbelief,Lorem Ipsumisn otsim plyran domtext.", "Richard McClintock, a Latin professor at Hampden-Sydney College in scissors.", "from a Lorem Ipsum passage, and going through the cites of the word", "This book is a treatise on the theory of ethics", "When you looked upon of the more scure Latinwords,consectetur", "The first lineof LoremIpsum, Loremipsu mdolors ita met."]


    
    @IBAction func colorViewChange() {
          view.backgroundColor = randomColor()
          textLabel.text = randomText()

        }

    func randomColor() -> UIColor
        {
            let color = UIColor(red: (CGFloat(Float.random(in: 0...1))), green: (CGFloat(Float.random(in: 0...1))), blue: (CGFloat(Float.random(in: 0...1))), alpha: 1.0)
                return color
         }
    
    func randomText() -> String
        {
            let i = Int.random(in: 0...6)
            textLabel.text = myText[i]
            return myText[i]
         }
}
