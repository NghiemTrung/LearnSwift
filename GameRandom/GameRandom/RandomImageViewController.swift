//
//  RandomImageViewController.swift
//  GameRandom
//
//  Created by Trung on 10/24/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class RandomImageViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    let imageName = ["anh1","anh2","anh3","anh4","anh5","anh6",]
    var randomName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onChange(_ sender: Any) {
        randomName = randomImage()
        photoImageView.image = UIImage(named: randomName)
    }
    
    func randomImage() -> String {
        var name = imageName.randomElement()!
        if randomName == name {
            name = randomImage()
            
        }
        return name
    }
    
}
