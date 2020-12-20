//
//  ViewController.swift
//  ChallengeTask3
//
//  Created by 酒井健太郎 on 2020/12/20.
//

import UIKit

// 継承不可
final class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var label3: UILabel!
    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch1.isOn = false
        switch2.isOn = false
    }
    
    // 計算をする
    @IBAction func buttonPressed(_ sender: UIButton) {
        // 入力
        let num1 = Int(textField1.text ?? "") ?? 0
        let signedNum1: Int
        if switch1.isOn {
            signedNum1 = -num1
        } else {
            signedNum1 = num1
        }
        label1.text = String(signedNum1)

        let num2 = Int(textField2.text ?? "") ?? 0
        let signedNum2: Int
        if switch2.isOn {
            signedNum2 = -num2
        } else {
            signedNum2 = num2
        }
        label2.text = String(signedNum2)

        // 出力
        label3.text = String(signedNum1 + signedNum2)
    }
}
