//
//  ViewController.swift
//  2-16Calculator
//
//  Created by 鈴木みゆき on 2020/05/08.
//  Copyright © 2020 鈴木みゆき. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var textField: UITextField!
//
//
//    @IBOutlet weak var enteredCondition: UITextField!
//    @IBOutlet weak var BinaryAnswer: UITextView!
//    @IBOutlet weak var DecimalAnswer: UITextView!
//    @IBOutlet weak var HexdecAnswer: UITextView!
//
//    var selectedNumber = 0 //0:decimal, 1: binary, 2:hexdecimal
//
//    var binaryColor = false
//    var decimalColor = true
//    var hexdecColor = false
    
    
    @IBOutlet weak var selectionResult: UILabel!
    @IBOutlet weak var enterField: UITextField!
    
    
    
    @IBOutlet weak var binaryValue: UILabel!
    @IBOutlet weak var decimalValue: UILabel!
    @IBOutlet weak var hexdecValue: UILabel!
    
    
    var binaryCondition = false;
    var decimalCondition = true;
    var hexdecCondition = false;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
//    @IBAction func binaryButton(_ sender: UIButton) {
//        binaryColor = true
//        decimalColor = false
//        hexdecColor = false
//        enteredCondition.text = "Binary"
//    }
//    
//    @IBAction func decimalButton(_ sender: UIButton) {
//        binaryColor = false
//        decimalColor = true
//        hexdecColor = false
//        enteredCondition.text = "Decimal"
//    }
//    
//    @IBAction func Hexdec(_ sender: UIButton) {
//        binaryColor = false
//        decimalColor = false
//        hexdecColor = true
//        enteredCondition.text = "Hexdec"
//    }
//    
//    
//    
//    
//    
//    
//    
//    
//    @IBAction func setTextButton(_ sender: UIButton) {
//        let mtext = textField.text
//        let number = mtext ?? ""
//        
//        if binaryColor && !decimalColor && !hexdecColor{
//            let decimalNumber = Int(number, radix: 2)!
//            let hexNumber = String(Int(number, radix: 2)!, radix: 16)
//            
//            BinaryAnswer.text = number
//            DecimalAnswer.text = String(decimalNumber)
//            HexdecAnswer.text = hexNumber
//        }
//        else if !binaryColor && decimalColor && !hexdecColor{
//            let binaryNumber = String((Int(number) ?? 0), radix: 2)
//            let hexNumber = String((Int(number) ?? 0), radix: 16)
//            
//            BinaryAnswer.text = binaryNumber
//            DecimalAnswer.text = number
//            HexdecAnswer.text = hexNumber
//        }
//        else if !binaryColor && !decimalColor && hexdecColor{
//            let binaryNumber = String(Int(number, radix: 16)!, radix: 2)
//            let decimalNumber = Int(number, radix: 16)!
//            
//            BinaryAnswer.text = binaryNumber
//            DecimalAnswer.text = String(decimalNumber)
//            HexdecAnswer.text = number
//        }
//        
//    }
    
    
    @IBAction func binaryButton(_ sender: UIButton) {
        binaryCondition = true;
        decimalCondition = false;
        hexdecCondition = false;
        selectionResult.text = "Binary"
        
    }
    
    @IBAction func decimalButton(_ sender: UIButton) {
        binaryCondition = false;
        decimalCondition = true;
        hexdecCondition = false;
        selectionResult.text = "Decimal"
    }
    
    @IBAction func hexdecButton(_ sender: UIButton) {
        binaryCondition = false;
        decimalCondition = false;
        hexdecCondition = true;
        selectionResult.text = "Hexdec"
    }
    
    @IBAction func setButton(_ sender: Any) {
                let mtext = enterField.text
                let number = mtext ?? ""
        
                if binaryCondition && !decimalCondition && !hexdecCondition{
                    let decimalNumber = Int(number, radix: 2)!
                    let hexNumber = String(Int(number, radix: 2)!, radix: 16)
        
                    binaryValue.text = number
                    decimalValue.text = String(decimalNumber)
                    hexdecValue.text = hexNumber
                }
                else if !binaryCondition && decimalCondition && !hexdecCondition{
                    let binaryNumber = String((Int(number) ?? 0), radix: 2)
                    let hexNumber = String((Int(number) ?? 0), radix: 16)
        
                    binaryValue.text = binaryNumber
                    decimalValue.text = number
                    hexdecValue.text = hexNumber
                }
                else if !binaryCondition && !decimalCondition && hexdecCondition{
                    let binaryNumber = String(Int(number, radix: 16)!, radix: 2)
                    let decimalNumber = Int(number, radix: 16)!
        
                    binaryValue.text = binaryNumber
                    decimalValue.text = String(decimalNumber)
                    hexdecValue.text = number
                }
    }
    
    
}

