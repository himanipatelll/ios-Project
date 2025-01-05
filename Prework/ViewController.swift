//
//  ViewController.swift
//  Prework
//
//  Created by himani patel on 1/4/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{
            
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
           func changeTxtColor() -> UIColor{
               
               let red = CGFloat.random(in: 0...1)
               let green = CGFloat.random(in: 0...1)
               let blue = CGFloat.random(in: 0...1)
               
               return UIColor(red: red, green: green, blue: blue, alpha: 1)
           }
        for subview in view.subviews{
            if let label = subview as? UILabel {
                label.textColor = changeTxtColor()
            }
        }
       }
}

