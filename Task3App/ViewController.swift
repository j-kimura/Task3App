//
//  ViewController.swift
//  Task3App
//
//  Created by Jui Kimura on 2021/02/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!

    @IBOutlet private weak var firstSwitch: UISwitch!
    @IBOutlet private weak var secondSwitch: UISwitch!

    @IBOutlet private weak var calculationLabel1: UILabel!
    @IBOutlet private weak var calculationLabel2: UILabel!

    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        firstSwitch.isOn = false
        secondSwitch.isOn = false
        textField1.keyboardType = UIKeyboardType.numberPad
        textField2.keyboardType = UIKeyboardType.numberPad
    }

    @IBAction private func calculationButton(_ sender: Any) {
        guard let num1 = Int(textField1.text!) else {
            return
        }
        guard let num2 = Int(textField2.text!) else {
            return
        }

        if firstSwitch.isOn == true {
            calculationLabel1.text = "-\(num1)"
        } else {
            calculationLabel1.text = "\(num1)"
        }

        if secondSwitch.isOn == true {
            calculationLabel2.text = "-\(num2)"
        } else {
            calculationLabel2.text = "\(num2)"
        }

        guard let result1 = Int(calculationLabel1.text!) else {
            return
        }
        guard let result2 = Int(calculationLabel2.text!) else {
            return
        }
        resultLabel.text = "\(result1 + result2)"       
    }
}
