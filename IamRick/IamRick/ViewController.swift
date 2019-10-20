//
//  ViewController.swift
//  IamRick
//
//  Created by Trung on 10/19/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageRuby: UIImageView!
    @IBOutlet weak var labelIamRick: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageRuby.alpha = CGFloat(0)
        labelIamRick.alpha = 0
        
        labelIamRick.center = CGPoint(x: view.center.x, y: view.center.y + 500)
        
        UIView.animate(withDuration: 5) {
            self.imageRuby.alpha=1.0
            self.labelIamRick.center.y = self.view.center.y + 200
        }
    }


}

