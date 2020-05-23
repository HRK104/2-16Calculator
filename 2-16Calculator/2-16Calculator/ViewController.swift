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
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return (true)
    }
    
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
                    
                    // check the entered number is calculatable
                    var canCalculate = true;
                    var countNum = 0
                    while countNum < number.count && canCalculate == true{
                        let aCharacter = number[number.index(number.startIndex, offsetBy: countNum)..<number.index(number.startIndex, offsetBy: countNum+1)]

                        print(aCharacter)
                        if(aCharacter == "0" || aCharacter == "1") {
                            canCalculate = true;
                        }
                        else{
                            canCalculate = false;
                            print("cant calculate")
                        }
                        
                        countNum += 1
                    }
                    if(canCalculate){ // if it is calculatable
                        let decimalNumber = Int(number, radix: 2)!
                        let hexNumber = String(Int(number, radix: 2)!, radix: 16)

                        binaryValue.text = number
                        decimalValue.text = String(decimalNumber)
                        hexdecValue.text = hexNumber
                    }
                    else{
                        print("can't calculate")
                    }
                    
                }
                else if !binaryCondition && decimalCondition && !hexdecCondition{
//                    let binaryNumber = String((Int(number) ?? 0), radix: 2)
//                    let hexNumber = String((Int(number) ?? 0), radix: 16)
//
//                    binaryValue.text = binaryNumber
//                    decimalValue.text = number
//                    hexdecValue.text = hexNumber
                    
                    // check the entered number is calculatable
                    var canCalculate = true;
                    var countNum = 0;
                    while countNum < number.count && canCalculate == true{
                        let aCharacter = number[number.index(number.startIndex, offsetBy: countNum)..<number.index(number.startIndex, offsetBy: countNum+1)]

                        if(aCharacter == "0" || aCharacter == "1" || aCharacter == "2"
                            || aCharacter == "3" || aCharacter == "4" || aCharacter == "5"
                            || aCharacter == "6" || aCharacter == "7" || aCharacter == "8"
                            || aCharacter == "9") {
                            canCalculate = true;
                        }
                        else{
                            canCalculate = false
                        }
                        print(aCharacter)
                        
                        countNum += 1
                    }
                    if(canCalculate){ // if it is calculatable
                        let binaryNumber = String((Int(number) ?? 0), radix: 2)
                        let hexNumber = String((Int(number) ?? 0), radix: 16)
                        
                        binaryValue.text = binaryNumber
                        decimalValue.text = number
                        hexdecValue.text = hexNumber
                    }
                    else{
                        print("can't calculate in decimal")
                    }
                }
                else if !binaryCondition && !decimalCondition && hexdecCondition{
//                    let binaryNumber = String(Int(number, radix: 16)!, radix: 2)
//                    let decimalNumber = Int(number, radix: 16)!
//
//                    binaryValue.text = binaryNumber
//                    decimalValue.text = String(decimalNumber)
//                    hexdecValue.text = number
                    
                    
                    
                    // check the entered number is calculatable
                    var canCalculate = true;
                    var countNum = 0;
                    while countNum < number.count && canCalculate == true{
                        let aCharacter = number[number.index(number.startIndex, offsetBy: countNum)..<number.index(number.startIndex, offsetBy: countNum+1)]

                        if(aCharacter == "0" || aCharacter == "1" || aCharacter == "2"
                            || aCharacter == "3" || aCharacter == "4" || aCharacter == "5"
                            || aCharacter == "6" || aCharacter == "7" || aCharacter == "8"
                            || aCharacter == "9" || aCharacter == "a" || aCharacter == "b"
                            || aCharacter == "c" || aCharacter == "d" || aCharacter == "e"
                            || aCharacter == "f" || aCharacter == "A" || aCharacter == "B"
                            || aCharacter == "C" || aCharacter == "D" || aCharacter == "E"
                            || aCharacter == "F") {
                            canCalculate = true;
                        }
                        else{
                            canCalculate = false
                        }
                        print(aCharacter)
                        
                        countNum += 1
                    }
                    if(canCalculate){ // if it is calculatable
                        let binaryNumber = String(Int(number, radix: 16)!, radix: 2)
                        let decimalNumber = Int(number, radix: 16)!
                        
                        binaryValue.text = binaryNumber
                        decimalValue.text = String(decimalNumber)
                        hexdecValue.text = number
                    }
                    else{
                        print("can't calculate in hexdec")
                    }
                }
    }
    
    
}

