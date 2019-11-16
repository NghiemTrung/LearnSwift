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
        //dùng switch
        soDien = Float(txtSoDien.text!)!
        switch soDien {
        case 401...:
            tienDien += (soDien-401)*(2927-2834)
            fallthrough
        case 301...400:
            tienDien += (soDien-301)*(2834-2536)
            fallthrough
        case 201...300:
            tienDien += (soDien-201)*(2536-2014)
            fallthrough
        case 101...200:
            tienDien += (soDien-101)*(2014-1734)
            fallthrough
        case 51...100:
            tienDien += (soDien-51)*(1734-1678)
            fallthrough
        default:
            tienDien += 1678 * soDien
        }
        
        labelTienDien.text = String(tienDien)
        tienDien = 0
    }
    

}
