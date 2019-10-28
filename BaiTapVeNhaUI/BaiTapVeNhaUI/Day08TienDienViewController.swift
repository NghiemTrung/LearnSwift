//
//  Day08TienDienViewController.swift
//  BaiTapVeNhaUI
//
//  Created by Trung on 10/28/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class Day08TienDienViewController: UIViewController {

    @IBOutlet weak var txtSoDien: UITextField!
    @IBOutlet weak var labelTienDien: UILabel!
    var soDien: Float = 0
    var tienDien: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCalculation(_ sender: Any) {
        soDien = Float(txtSoDien.text!)!
        tienDien = soDien * (1678)
        tienDien += (soDien-51 > 0) ? (soDien - 51)*(1734-1678) : 0
        tienDien += ((soDien-101) > 0) ? (soDien-101)*(2014-1734) : 0
        tienDien += ((soDien-201) > 0) ? (soDien-201)*(2536-2014) : 0
        //dùng switch
    }
    

}
