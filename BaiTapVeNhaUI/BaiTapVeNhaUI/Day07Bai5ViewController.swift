//
//  Day07Bai5ViewController.swift
//  BaiTapVeNhaUI
//
//  Created by Trung on 10/26/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class Day07Bai5ViewController: UIViewController {

    @IBOutlet weak var txtSoKm: UITextField!
    @IBOutlet var labelSoTien: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonTinhTien_click(_ sender: Any) {
        var soKm = Float(txtSoKm.text!)!
        
    }
    
}
