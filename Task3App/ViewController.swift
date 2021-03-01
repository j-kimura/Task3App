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
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
    }

    @IBAction private func calculationButton(_ sender: Any) {
        guard let num1 = Int(textField1.text!) else {
            return
        }
        guard let num2 = Int(textField2.text!) else {
            return
        }

        let signedNumber1: Int
        if firstSwitch.isOn {
            signedNumber1 = -num1
        } else {
            signedNumber1 = num1
        }

        let signedNumber2: Int
        if secondSwitch.isOn {
            signedNumber2 = -num2
        } else {
            signedNumber2 = num2
        }

        resultLabel.text = "\(signedNumber1 + signedNumber2)"
    }
}
