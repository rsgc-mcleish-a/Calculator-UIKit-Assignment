//
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //This is a conection to the label in our view
    @IBOutlet weak var labelDisplay: UILabel!
    
    //creats an instance and (object) of the calculator class
    var model = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //clear the contents of the label
        labelDisplay.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //The function that carries out when the one button is pressed
    @IBAction func onePressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
        labelDisplay.text = model.providedValue
        
    }
    //The function that carries out when the two button is pressed
    @IBAction func twoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        labelDisplay.text = model.providedValue
        
    }
    //The function that carries out when the three button is pressed
    @IBAction func threePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        labelDisplay.text = model.providedValue
        
    }
    //The function that carries out when the four button is pressed
    @IBAction func fourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        labelDisplay.text = model.providedValue
        
    }
    //The function that carries out when the five button is pressed
    @IBAction func fivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        labelDisplay.text = model.providedValue
    
    }
    //The function that carries out when the six button is pressed
    @IBAction func sixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        labelDisplay.text = model.providedValue
    
    }
    //The function that carries out when the seven button is pressed
    @IBAction func sevenPressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        labelDisplay.text = model.providedValue
        
    }
    //The function that carries out when the eight button is pressed
    @IBAction func eightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        labelDisplay.text = model.providedValue
        
    }
    //The function that carries out when the nine button is pressed
    @IBAction func ninePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        labelDisplay.text = model.providedValue
    
    }
    //The function that carries out when the zero button is pressed
    @IBAction func zeroPressed(_ sender: Any) {
        model.addToNewValue(digit: "0")
        labelDisplay.text = model.providedValue
    }
    //The function that carries out when the period button is pressed
    @IBAction func periodPressed(_ sender: Any) {
        model.addToNewValue(digit: ".")
        labelDisplay.text = model.providedValue
    }
    //The function that carries out when the multiply button is pressed
    @IBAction func Multiply(_ sender: Any) {
        model.multiply()
        labelDisplay.text = "×"
    }
    //The function that carries out when the divide button is pressed
    @IBAction func divide(_ sender: Any) {
        model.divide()
        labelDisplay.text = "÷"
        
    }
    //The function that carries out when the add button is pressed
    @IBAction func addition(_ sender: Any) {
        model.addition()
        labelDisplay.text = "+"
    
    }
    //The function that carries out when the subtract button is pressed
    @IBAction func subtraction(_ sender: Any) {
        model.subtraction()
        labelDisplay.text = "-"
    }
    //The function that carries out when the plus minus button is pressed
    @IBAction func plusMinus(_ sender: Any) {
        model.plusMinus()
        labelDisplay.text = model.providedValue
        
    }
  //The function that carries out when the percent button is pressed
    @IBAction func percent(_ sender: Any) {
        model.percentage()
        labelDisplay.text = String(format: "%g",  model.computedValue!)
        labelDisplay.text = "%"

    }
    
    //The function that carries out when the clear button is pressed
    @IBAction func clearPressed(_ sender: Any) {
        model.clear()
        labelDisplay.text = model.providedValue
        
    }
    
    //The function that carries out when the equals button is pressed
    @IBAction func equals(_ sender: Any) {
        model.equals()
        if model.computedValue != nil {
            labelDisplay.text = String(format: "= %g", model.computedValue!)

    }
    
    
    }

}
