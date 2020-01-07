//
//  ViewController.swift
//  ShowListImage
//
//  Created by Trung on 12/6/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let scrolView: UIScrollView = {
        let scrolview = UIScrollView()
        scrolview.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.height)
        scrolview.backgroundColor = .lightGray
        scrolview.isPagingEnabled = true
        return scrolview
    }()
    
    var images : [UIImage] = []
    
    var names : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrolView)
        images = [
        UIImage(named: "camera_lense_0"),
        UIImage(named: "ClockFace"),
        UIImage(named: "queen"),
        UIImage(named: "Reload-Blue-Icon"),
        UIImage(named: "ClockFace"),
        UIImage(named: "Reload-Blue-Icon"),
        ] as! [UIImage]
        names = [
            "the gioi nhin qua lens","mat dong ho hong","quan Hau co vua","reload button","lai la mat dong ho","reload them khong"
        ]
        view.addSubview(scrolView)
        setupImage(images,names)
    }

    func setupImage(_ imgs: [UIImage], _ imgnames: [String]) {
        let witdh = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        for i in 0..<imgs.count{
            let imgView = UIImageView(frame: CGRect(x: 0, y: height*CGFloat(i), width: witdh, height: height))
            imgView.contentMode = .scaleAspectFit
            imgView.image = imgs[i]
            let lblView = UILabel(frame: CGRect(x: 0, y: height-250 + height*CGFloat(i), width: witdh, height: 200))
            lblView.text = imgnames[i]
            lblView.font = .boldSystemFont(ofSize: 25)
            lblView.drawText(in: CGRect(x: 12, y: 12, width: 12, height: 12))
            lblView.highlightedTextColor = .yellow
            lblView.isHighlighted = true
            lblView.textAlignment = .center
            scrolView.addSubview(imgView)
            imgView	.addSubview(lblView)
            
        }
        scrolView.contentSize = CGSize(width: witdh, height: scrolView.frame.height * CGFloat(imgs.count))
    }
}
