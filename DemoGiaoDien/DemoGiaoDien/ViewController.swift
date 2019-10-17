//
//  ViewController.swift
//  DemoGiaoDien
//
//  Created by Trung on 10/12/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveName(_ sender: UIButton) {
        print("lưu tên")
        print(txtField.text!)
        nameLabel.text = txtField.text
    }
    
}

