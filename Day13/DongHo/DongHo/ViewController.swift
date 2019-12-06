//
//  ViewController.swift
//  DongHo
//
//  Created by Trung on 11/16/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let currentDate = NSDate()
    let calendar = NSCalendar.current
    var timer = Timer()
    
    @IBOutlet weak var viewKimGio: UIView!
    @IBOutlet weak var viewKimGiay: UIView!
    @IBOutlet weak var viewKimPhut: UIView!
    @IBOutlet weak var imageClock: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
        setAnchorPoint(viewKim: viewKimGio, point: CGPoint(x: 0, y: 0.5))
        setAnchorPoint(viewKim: viewKimPhut, point: CGPoint(x: 0, y: 0.5))
        setAnchorPoint(viewKim: viewKimGiay, point: CGPoint(x: 0, y: 0.5))
        runDongHo()
    }
    
    func setUI() {
        viewKimGio.frame.size=CGSize(width: imageClock.bounds.width/10*2.5, height: 6)
        viewKimGio.center = imageClock.center
        
        viewKimPhut.frame.size=CGSize(width: imageClock.bounds.width/10*3, height: 4)
        viewKimPhut.center=imageClock.center
        
        viewKimGiay.frame.size = CGSize(width: imageClock.bounds.width/10*3.5, height: 2)
        viewKimGiay.center = imageClock.center
    }
    
    func setAnchorPoint(viewKim: UIView, point: CGPoint) {
        viewKim.layer.anchorPoint = point
        
    }
    
    func getLocation(viewKim: UIView, alpha: CGFloat) {
        let r = viewKim.bounds.size.height/2
        viewKim.layer.cornerRadius=r
        
        setAnchorPoint(viewKim: viewKim, point: CGPoint(x: 0, y: 0.5))
        viewKim.transform = CGAffineTransform(rotationAngle: alpha)
    }
    
    func setTimer() -> (hour: CGFloat, minnute: CGFloat, second: CGFloat) {
        let hour = calendar.component(.hour, from: currentDate as Date)
        let minute = calendar.component(.minute, from: currentDate as Date)
        let second = calendar.component(.second, from: currentDate as Date)
        
        let hourToSecond = hour*60*60+minute*60+second
        let minuteToSecond = minute*60+second
        
        let firstAlphaHour = CGFloat.pi * (2*CGFloat(hourToSecond)/12/60/60-0.5)
        let firstAlphaMinute = CGFloat.pi * (2*CGFloat(minuteToSecond)/60/60 - 0.5)
        let firstAlphaSecond = CGFloat.pi * (2*CGFloat(minuteToSecond)/60 - 0.5)
        
        
        
        return (firstAlphaHour,firstAlphaMinute,firstAlphaSecond)
    }
    
    func runDongHo() {
        getLocation(viewKim: viewKimGio, alpha: setTimer().hour)
        getLocation(viewKim: viewKimPhut, alpha: setTimer().minnute)
        getLocation(viewKim: viewKimGiay, alpha: setTimer().second)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
    }
    
    @objc func runTimer(){
        let omegaGio = CGAffineTransform(rotationAngle: CGFloat.pi*2/60/60/12)
        let omegaPhut = CGAffineTransform(rotationAngle: CGFloat.pi*2/60/60)
        let omegaGiay = CGAffineTransform(rotationAngle: CGFloat.pi*2/60)
        
        viewKimGio.transform = viewKimGio.transform.concatenating(omegaGio)
        viewKimPhut.transform = viewKimPhut.transform.concatenating(omegaPhut)
        viewKimGiay.transform = viewKimGiay.transform.concatenating(omegaGiay)
    }

}

