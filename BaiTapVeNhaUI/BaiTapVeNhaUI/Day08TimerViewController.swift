//
//  Day08TimerViewController.swift
//  BaiTapVeNhaUI
//
//  Created by Trung on 10/28/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class Day08TimerViewController: UIViewController {

    enum Time {
        case start
        case pause
    }
    
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var buttonStartPause: UIButton!
    @IBOutlet weak var buttonRestart: UIButton!
    
    var timer: Timer!
    var timeCount: Int = 0
    var type: Time = Time.start
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onStart(_ sender: Any) {
        if type == Time.start {
            initTimer()
            buttonStartPause.setTitle("Pause", for: .normal)
            type = Time.pause
        } else {
            buttonStartPause.setTitle("Start", for: .normal)
            type = Time.start
            timer.invalidate()
        }
    }
    
    @IBAction func onRestart(_ sender: Any) {
        timeCount = 0
        labelTime.text = String(timeCount)
        timer.invalidate()
    }
    
    func initTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
    }
    
    @objc func runTimer(){
        timeCount+=1
        labelTime.text = String(timeCount)
    }
    
    

}
