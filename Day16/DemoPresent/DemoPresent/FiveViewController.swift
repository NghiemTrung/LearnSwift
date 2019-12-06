//
//  FiveViewController.swift
//  DemoPresent
//
//  Created by Trung on 12/3/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class FiveViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancel))
    }
    @objc func cancel(){
        navigationController?.popToRootViewController(animated: false)
    }

}
