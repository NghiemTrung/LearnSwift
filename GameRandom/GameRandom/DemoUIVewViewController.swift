//
//  DemoUIVewViewController.swift
//  GameRandom
//
//  Created by Trung on 10/24/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class DemoUIVewViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.darkGray
        print("kích thước thiết bị")
        
        //kichs thuwocj toaj ddooj thieets bij
        print("kích thước toạ độ thiệt bị")
        print(view.frame)
        print("blue view")
        print(blueView.frame)
        
        blueView.frame.size = CGSize(width: 120, height: 120)
        blueView.center = view.center
        blueView.layer.cornerRadius = 20
        
        blueView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4)
    }
    


}
