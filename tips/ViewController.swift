//
//  ViewController.swift
//  tips
//
//  Created by WEI CHEN on 12/29/14.
//  Copyright (c) 2014 WEI CHEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipField_2: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        tipField_2.text = "20"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderValueChanged(sender: AnyObject) {
        var tipPencentage = String(format:"%.0f", tipSlider.value*100)
        tipField_2.text = "\(tipPencentage)"
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        //var tipPencentages = [0.1, 0.15, 0.2]
        //var tipPencentage = tipPencentages[tipControl.selectedSegmentIndex]
        
        
        var billAmount = NSString(string: tipField.text).doubleValue
        var tip = billAmount * NSString(string: tipField_2.text).doubleValue/100
        var total = billAmount + tip
        var red = NSString(string: tipField_2.text).doubleValue/40
        self.view.backgroundColor = UIColor(red:CGFloat(red), green:0.3, blue:0.4, alpha:1)
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
        
        
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
        
    }

}