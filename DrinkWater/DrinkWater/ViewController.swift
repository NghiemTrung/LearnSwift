//
//  ViewController.swift
//  DrinkWater
//
//  Created by Trung on 10/26/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var labelCountDown: UILabel!
    @IBOutlet weak var waterView: UIView!
    var n = 60
    var count = 0
    var time : Timer!
    var soundPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(runTimer), userInfo: nil, repeats: true)
        labelCountDown.text = String(n)
        count = n
    }


    @objc func runTimer(){
        print("run loop")
        count -= 1
        labelCountDown.text = String(count)
        if count < 1 {
            soundPlayer?.pause()
        }
        waterView.frame = CGRect(x: 0, y: 0, width: waterView.frame.origin.x, height: waterView.frame.origin.y)
        playSound()
        
    }
    
    func playSound() {
        let soundPath = Bundle.main.path(forResource: "bubblewater.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: soundPath)
        
        do{
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.play()
            soundPlayer?.numberOfLoops = -1
        } catch {
            
        }
        
    }
}

