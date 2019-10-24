//
//  ViewController.swift
//  GameRandom
//
//  Created by Trung on 10/24/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var buttonReload: UIButton!
    
    var random: Int = Int.random(in: 0...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(random)")
        // Do any additional setup after loading the view.
        labelResult.isHidden = true
        buttonReload.isHidden = true
        txtInput.keyboardType = .numberPad
        buttonReload.titleLabel?.text = "Reload"
    }

    @IBAction func onCheck(_ sender: Any) {
        guard let number = Int(txtInput.text!) else {
            return
        }
        labelResult.isHidden = false
        if number<random {
            labelResult.text = "Bé quá"
        } else if(number>random) {
            labelResult.text = "Lớn quá"
        } else{
            labelResult.text = "Chuẩn rồi"
            buttonReload.isHidden=false
        }
    }
    
    @IBAction func onReload(_ sender: Any) {
        txtInput.text = ""
        labelResult.isHidden = true
        buttonReload.isHidden = true
        random = Int.random(in: 0...100)
    }
    
    
}

