//
//  ViewController.swift
//  GameZ
//
//  Created by Farhana Mustafa on 10/4/16.
//  Copyright © 2016 Farhana Mustafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //Labels
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var correct: UILabel!
    
    //Array of operations
    var operation: [String] = ["+", "-", "x"]
    //Random int from 0-2 for operations array
    var randomOp = Int(arc4random_uniform(3))
    
    //Random Number variables
    var x = Int(arc4random_uniform(10)+1)
    var y = Int(arc4random_uniform(10)+1)
    
    override func viewDidLoad() {
        //super.viewDidLoad()
        questionLabel.text = "\(x)" + " \(operation[randomOp]) " + "\(y)"
    }
    
    var answerValue: Int?

    
    @IBAction func answerFieldEditingChanged(textField: UITextField) {
        if let answer = textField.text, value = Int(answer) {
            answerValue = value
        }
        else {
            answerValue = nil
        }
    }
    
    @IBAction func userTappedBackground(gestureRecognizer: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }

    
    @IBAction func submit(button: UIButton) {
        if let answer = textField.text, value = Int(answer) {
            //answerValue = numberFormatter.stringFromNumber(value)
            answerValue = value
        }
        
        switch randomOp {
        case 0:
            //+
            if ((x + y) == answerValue) {
                correct.textColor = UIColor.blueColor()
                correct.text = "CORRECT"
            }
            else {
                correct.text = "NOT CORRECT"
            }
        case 1:
            //-
            if ((x - y) == answerValue) {
                correct.textColor = UIColor.blueColor()
                correct.text = "CORRECT"
            }
            else {
                correct.text = "NOT CORRECT"
            }
        default:
            //x
            if ((x * y) == answerValue) {
                correct.textColor = UIColor.blueColor()
                correct.text = "CORRECT"
            }
            else {
                correct.text = "NOT CORRECT"
            }
        }

    }
    
    @IBAction func playAgain(button: UIButton) {
        x = Int(arc4random_uniform(10)+1)
        y = Int(arc4random_uniform(10)+1)
        questionLabel.text = "\(x)" + " \(operation[randomOp]) " + "\(y)"
        textField.text = ""
        correct.text = ""
    }
    
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    func textField(textField: UITextField,
                   shouldChangeCharactersInRange range: NSRange,
                                                 replacementString string: String) -> Bool {
        let existingTextHasDecimalSeparator = textField.text?.rangeOfString("0")
        let replacementTextHasDecimalSeparator = string.rangeOfString("0")
        
        if replacementTextHasDecimalSeparator != nil && existingTextHasDecimalSeparator != nil {
            return false
        }
        else {
            return true
        }
        
//        
//        let code = textField.text
//        let firstChar = code![code!.startIndex]
//        if (firstChar == Char(0)) {
//            return false
//        }
//        else {
//            return true
//        }
        
    }
    
}

