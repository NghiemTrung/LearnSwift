//
//  TimerViewController.swift
//  MayTrinh
//
//  Created by Trung on 11/14/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    let currentDate = NSDate()
    let calendar = NSCalendar.current
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(currentDate)")
        print("\(calendar)")
        let hour = calendar.component(.hour, from: currentDate as Date)
        print("\(hour)")
    }    	
}
