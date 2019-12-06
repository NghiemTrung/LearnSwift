//
//  FourViewController.swift
//  DemoPresent
//
//  Created by Trung on 12/3/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class FourViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Four ViewController"
        
        let cameraBarButton = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(tapCamera))
        let newBarButton = UIBarButtonItem(title: "AOG", style: .done, target: self, action: #selector(tapCamera))
        navigationItem.rightBarButtonItems = [cameraBarButton,newBarButton]
    }
    
    @objc func tapCamera(){
        print("tap")
        let fiveVC = FiveViewController()
        navigationController?.pushViewController(fiveVC, animated: true)
    }
}
