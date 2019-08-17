//
//  ViewController.swift
//  What to Eat
//
//  Created by Mac OS on 11/1/2562 BE.
//  Copyright © 2562 sirux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var menuArray = ["กระเพรา", "ผัดซีอิ้ว", "ผัดไท", "แกงแดง", "ผัดผัก", "ผัดมะเขือ", "ไก่อบวุ้นเส้น", "ผัดพริกขิง", "ต้มยำ", "ต้มข่า", "ลาบ", "ไก่ย่าง", "ยำเต้าหู้"]
    
    var txt = "อะไรก็ได้"
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

