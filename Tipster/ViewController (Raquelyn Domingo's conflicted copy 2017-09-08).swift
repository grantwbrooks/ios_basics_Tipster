//
//  ViewController.swift
//  Tipster
//
//  Created by Raquel Domingo on 9/8/17.
//  Copyright © 2017 Raquel Domingo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var amountTotalLabel: UILabel!

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        var temp = ""
        
        if sender.tag == 7 {
        print("hello 7 pressed")
        temp += String(7)
        
        amountTotalLabel.text = temp
        
        }
        if sender.tag == 8 {
            print("hello 8 pressed")
            amountTotalLabel.text = String(8)
        }
        if sender.tag == 9 {
            print("hello 9 pressed")
            amountTotalLabel.text = String(9)
        }
        if sender.tag == 4 {
            print("hello 4 pressed")
            amountTotalLabel.text = String(4)
        }
        if sender.tag == 5 {
            print("hello 5 pressed")
            amountTotalLabel.text = String(5)
        }
        if sender.tag == 6 {
            print("hello 6 pressed")
            amountTotalLabel.text = String(6)
        }
        if sender.tag == 1 {
            print("hello 1 pressed")
            amountTotalLabel.text = String(1)
        }
        if sender.tag == 2 {
            print("hello 2 pressed")
            amountTotalLabel.text = String(2)
        }
        if sender.tag == 3 {
            print("hello 3 pressed")
            amountTotalLabel.text = String(3)
        }
        if sender.tag == 200 {
            print("hello 200 pressed")
            amountTotalLabel.text = String(200)
        }
        if sender.tag == 0 {
            print("hello 0 pressed")
            amountTotalLabel.text = String(0)
        }
        if sender.tag == 201 {
            print("hello 201 pressed")
            amountTotalLabel.text = String(201)
        }
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

