//
//  ViewController.swift
//  MayTrinh
//
//  Created by Trung on 11/14/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    enum Operation:String {
        case Plus = "+"
        case Minus = "-"
        case Multiply = "*"
        case Divide = "/"
        case Empty = "Empty"
    }
    
    var currentOperation = Operation.Empty
    var runningNumber = ""
    var leftValString = ""
    var rightValString = ""
    var resultString = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberButton(_ sender: UIButton) {
        runningNumber += "\(sender.tag)"
        resultLabel.text = runningNumber
    }
    @IBAction func PlusButton(_ sender: UIButton) {
        processOperation(operation: Operation.Plus)
    }
    @IBAction func minusButton(_ sender: UIButton) {
        processOperation(operation: Operation.Minus)
    }
    @IBAction func multipleButton(_ sender: UIButton) {
        processOperation(operation: Operation.Multiply)
    }
    @IBAction func divideButton(_ sender: UIButton) {
        processOperation(operation: Operation.Divide)
    }
    @IBAction func equalButton(_ sender: UIButton) {
        processOperation(operation: currentOperation)
    }
    @IBAction func correctButton(_ sender: UIButton) {
    }
    
    func processOperation(operation: Operation){
        if currentOperation != Operation.Empty{ // nếu có phép tính được chọn thì nhảy vào đây
            if runningNumber != "" { // nếu sau biểu thức là số thì nhảy vào đây
                rightValString = runningNumber
                runningNumber = ""
                
                if currentOperation == Operation.Multiply {
                    resultString = "\(Double(leftValString)! * Double(rightValString)!)"
                } else if currentOperation == Operation.Divide {
                    resultString = "\(Double(leftValString)! / Double(rightValString)!)"
                } else if currentOperation == Operation.Minus {
                    resultString = "\(Double(leftValString)! - Double(rightValString)!)"
                } else if currentOperation == Operation.Plus {
                    resultString = "\(Double(leftValString)! + Double(rightValString)!)"
                }
                
                leftValString = resultString
                resultLabel.text = resultString
            }
        }else{
            leftValString = runningNumber
            runningNumber = ""
        }
        currentOperation = operation
    }
}

	
