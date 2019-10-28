//
//  DemoDay07ViewController.swift
//  DrinkWater
//
//  Created by Trung on 10/26/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class DemoDay07ViewController: UIViewController {

    @IBOutlet weak var viewBlock: UIView!
    @IBOutlet weak var sliderWidth: UISlider!
    @IBOutlet weak var sliderRadius: UISlider!
    @IBOutlet weak var sliderRotate: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderWidth_onChange(_ sender: Any) {
        viewBlock.transform = CGAffineTransform(scaleX: CGFloat(sliderWidth.value) * CGFloat(2), y: CGFloat(sliderWidth.value)*CGFloat(2))
    }
    @IBAction func sliderRadius_onChange(_ sender: Any) {
        viewBlock.layer.cornerRadius = viewBlock.bounds.width/2 * CGFloat(sliderRadius.value)
    }
    @IBAction func sliderRotate_onChange(_ sender: Any) {
        viewBlock.transform = CGAffineTransform(rotationAngle: CGFloat(sliderRotate.value) * 4 * (CGFloat.pi))

    }
}
