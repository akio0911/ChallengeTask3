//
//  ViewController.swift
//  ChallengeTask3
//
//  Created by 酒井健太郎 on 2020/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let num1 = Int(textField1.text ?? "") ?? 0
        label1.text = String(num1)
        let num2 = Int(textField2.text ?? "") ?? 0
        label2.text = String(num2)
        
        var num3 = num1 + num2
        label3.text = String(num3)
    }
}

