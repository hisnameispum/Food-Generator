//
//  ViewController.swift
//  What to Eat
//
//  Created by Mac OS on 11/1/2562 BE.
//  Copyright © 2562 sirux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var menuArray = ["Pad Thai Woon Sen", "Som Tum", "Red Curry", "Veg Combo", "Spicy Eggplant", "Clay pot", "Tom Yum", "Tom Kha", "Larb", "Namtok Tofu", "Yellow Curry", "Green Curry"]
    
    var txt = "Whatever"
    var randomNumber: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showText()
    }

    @IBOutlet weak var textView: UILabel!
    
    func showText(){
        textView.text = txt
    }
    
    func randomMenu(){
        randomNumber = Int.random(in: 0 ... menuArray.count-1)
        txt = menuArray[randomNumber]
        showText()
    }
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        randomMenu()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomMenu()

    }
}

