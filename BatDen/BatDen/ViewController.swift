//
//  ViewController.swift
//  BatDen
//
//  Created by Trung on 10/19/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bulbImageView: UIImageView!
    @IBOutlet weak var btnBatTat: UIButton!
    
    var checkBatTat = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bulbImageView.image = UIImage(named: "DenBat")
        btnBatTat.setTitle("Tắt Đèn", for: .normal)
        btnBatTat.layer.cornerRadius = CGFloat(20)
    }
    
    @IBAction func btnBatTat_onPress(_ sender: Any) {
        checkBatTat(check: checkBatTat)
    }
    
    func checkBatTat(check: Bool) {
        if (checkBatTat){
            bulbImageView.image = UIImage(named: "DenTat")
            btnBatTat.setTitle("Bật Đèn", for: .normal)
        } else{
            bulbImageView.image = UIImage(named: "DenBat")
            btnBatTat.setTitle("Tắt Đèn", for: .normal)
        }
        checkBatTat = !checkBatTat
    }
    
}

