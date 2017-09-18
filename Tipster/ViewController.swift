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
    var numberEntered: Double?
    
    
    var temp = ""

    @IBOutlet var percent: [UILabel]!
    @IBOutlet var tipValue: [UILabel]!
    @IBOutlet var totalValue: [UILabel]!
    
    @IBOutlet weak var tipsliderout: UISlider!
    @IBOutlet weak var groupsliderout: UISlider!
    
    @IBOutlet weak var groupSizeLabel: UILabel!
    
    @IBAction func groupSlider(_ sender: UISlider) {
        calculate()
        print(groupsliderout.value)
    }
    
    @IBAction func tipSlider(_ sender: UISlider) {
        calculate()
    }
    
    
    
    
    func calculate(){
        var currentValue = Int(tipsliderout.value)
        var currentGroup = Int(groupsliderout.value)
        var tipAmount = Double()
        groupSizeLabel.text = String(currentGroup)
        var totalValueAmount = Double()
        print(currentValue)
        for p in percent {
        if p.tag == 11 {
        p.text = "\(currentValue)%"
        }
        if p.tag == 12 {
        currentValue += 5
        p.text = "\(currentValue)%"
        }
        if p.tag == 13 {
        currentValue += 10
        p.text = "\(currentValue)%"
        }
        }
        
        
        currentValue = Int(tipsliderout.value)
        numberEntered = Double(amountTotalLabel.text!)
        for t in tipValue {
        if t.tag == 21 {
        tipAmount = Double(currentValue) * numberEntered!/100 / Double(currentGroup)
        t.text = "$\(String(format: "%.2f", tipAmount))"
        }
        if t.tag == 22 {
        currentValue += 5
        tipAmount = Double(currentValue) * numberEntered!/100 / Double(currentGroup)
        t.text = "$\(String(format: "%.2f", tipAmount))"
        }
        if t.tag == 23 {
        currentValue += 10
        tipAmount = Double(currentValue) * numberEntered!/100 / Double(currentGroup)
        t.text = "$\(String(format: "%.2f", tipAmount))"
        }

        }


        currentValue = Int(tipsliderout.value)
        for total in totalValue {
        if total.tag == 31 {
        totalValueAmount = ((Double(currentValue) * numberEntered!/100) + numberEntered!)/Double(currentGroup)
            print(currentValue,numberEntered,numberEntered,currentGroup)
        total.text = "$\(String(format: "%.2f", totalValueAmount))"
        }
        if total.tag == 32 {
        currentValue += 5
        totalValueAmount = ((Double(currentValue) * numberEntered!/100) + numberEntered!)/Double(currentGroup)
        total.text = "$\(String(format: "%.2f", totalValueAmount))"
        }
        if total.tag == 33 {
        currentValue += 10
        totalValueAmount = ((Double(currentValue) * numberEntered!/100)  + numberEntered!)/Double(currentGroup)
        total.text = "$\(String(format: "%.2f", totalValueAmount))"
        }

        }
    }

    
    
    

    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        

        if sender.tag == 7 {
            print("hello 7 pressed")
            temp += String(7)
            amountTotalLabel.text = temp
        
        }
        if sender.tag == 8 {
            print("hello 8 pressed")
            temp += String(8)
            amountTotalLabel.text = temp
        }
        if sender.tag == 9 {
            print("hello 9 pressed")
            temp += String(9)
            amountTotalLabel.text = temp
        }
        if sender.tag == 4 {
            print("hello 4 pressed")
            temp += String(4)
            amountTotalLabel.text = temp
        }
        if sender.tag == 5 {
            print("hello 5 pressed")
            temp += String(5)
            amountTotalLabel.text = temp
        }
        if sender.tag == 6 {
            print("hello 6 pressed")
            temp += String(6)
            amountTotalLabel.text = temp
        }
        if sender.tag == 1 {
            print("hello 1 pressed")
            temp += String(1)
            amountTotalLabel.text = temp
        }
        if sender.tag == 2 {
            print("hello 2 pressed")
            temp += String(2)
            amountTotalLabel.text = temp
        }
        if sender.tag == 3 {
            print("hello 3 pressed")
            temp += String(3)
            amountTotalLabel.text = temp
        }
        if sender.tag == 200 {
            print("hello 200 pressed")
            temp = ""
            amountTotalLabel.text = "0"
        }
        if sender.tag == 0 {
            print("hello 0 pressed")
            if temp.characters.count > 0 {
                temp += String(0)
                amountTotalLabel.text = temp
            }
            else {
               amountTotalLabel.text = "0"
            }
            
            
        }
        if sender.tag == 201 {
            print("hello 201 pressed")
            
            if !temp.contains(".") {
                temp += "."
            }
            amountTotalLabel.text = temp
        }
       calculate()
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculate()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

