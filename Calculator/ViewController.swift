//
//  ViewController.swift
//  Calculator
//
//  Created by Owner on 2022/04/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var num1: Int = 0
    var num2: Int = 0
    var num3: Int = 0
    var ope: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSelect0() {
        substitute(num: 0)
    }
    
    @IBAction func onSelect1() {
        substitute(num: 1)
    }
    
    @IBAction func onSelect2() {
        substitute(num: 2)
    }
    
    @IBAction func onSelect3() {
        substitute(num: 3)
    }
    
    @IBAction func onSelect4() {
        substitute(num: 4)
    }
    
    @IBAction func onSelect5() {
        substitute(num: 5)
    }
    
    @IBAction func onSelect6() {
        substitute(num: 6)
    }
    
    @IBAction func onSelect7() {
        substitute(num: 7)
    }
    
    @IBAction func onSelect8() {
        substitute(num: 8)
    }
    
    @IBAction func onSelect9() {
        substitute(num: 9)
    }
    
    func substitute(num: Int) {
        num1 = num1 * 10 + num
        label.text = String(num1)
    }
    
    @IBAction func onPlus() {
        operate(with: 1)
    }
    
    @IBAction func onMinus() {
        operate(with: 2)
    }
    
    @IBAction func onMultiply() {
        operate(with: 3)
    }
    
    @IBAction func onDivide() {
        operate(with: 4)
    }
    
    func operate(with sign: Int) {
        num2 = num1
        num1 = 0
        ope = sign
    }
    
    @IBAction func onEqual() {
        if ope == 1 {
            num3 = num2 + num1
        } else if ope == 2 {
            num3 = num2 - num1
        } else if ope == 3 {
            num3 = num2 * num1
        } else if ope == 4 {
            num3 = num2 / num1
        }
        colorText()
        label.text = String(num3)
    }
    
    func colorText() {
        if num3 >= 10 {
            label.textColor = .red
        } else if num3 <= -10 {
            label.textColor = .blue
        } else {
            label.textColor = .black
        }
    }
    
    @IBAction func onClear() {
        num1 = 0
        num2 = 0
        num3 = 0
        ope = 0
        label.textColor = .black
        label.text = String(0)
    }
    
}

