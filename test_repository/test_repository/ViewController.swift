//
//  ViewController.swift
//  test_repository
//
//  Created by 西村奏人 on 2020/10/06.
//  Copyright © 2020 西村奏人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerlmageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    //ジャンケン(数字)
    var answerNumber = 0
    
    @IBAction func ShuffluAction(_ sender: Any) {
        //1〜3の乱数
        answerNumber = Int.random(in:0..<3)
        
        if answerNumber == 0{
        answerLabel.text = "グー"
        answerlmageView.image = UIImage(named:"janken_gu")
            
        }else if answerNumber == 1{
            answerLabel.text = "チョキ"
            answerlmageView.image = UIImage(named:"janken_choki")
            
        }else if answerNumber == 2{
            answerLabel.text = "パー"
            answerlmageView.image = UIImage(named:"janken_pa")
        }
        //次の試合
       // answerNumber = answerNumber + 1
    }
}

