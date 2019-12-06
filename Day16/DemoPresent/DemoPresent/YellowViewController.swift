//
//  YellowViewController.swift
//  DemoPresent
//
//  Created by Trung on 12/3/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onNext(_ sender: Any) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let pinkVC = mainStoryBoard.instantiateViewController(identifier: "PinkViewController") as PinkViewController
        present(pinkVC, animated: true, completion: nil)
    }
    
    @IBAction func onCancel(_ sender: Any) {
    }
}
