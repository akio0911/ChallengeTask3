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
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch1.isOn = false
        switch2.isOn = false
    }
    
    // 計算をする
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        print(switch1.isOn)
        // 入力
        var num1 = Int(textField1.text ?? "") ?? 0
        if switch1.isOn {
            num1 = -num1
            label1.text = String(num1.description)
        } else {
            label1.text = String(num1)
        }
        
        var num2 = Int(textField2.text ?? "") ?? 0
        if switch2.isOn {
            num2 = -num2
            label2.text = String(num2.description)
        } else {
            label2.text = String(num2)
        }
        
        // 出力
        var num3 = num1 + num2
        label3.text = String(num3)
        
    }
    
}

