//
//  ViewController.swift
//  AutoLayout
//
//  Created by Trung on 12/14/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //khoi tao UIView
    let viewContainner: UIView = {
       let myView = UIView()
        //auto layout bang code
        myView.translatesAutoresizingMaskIntoConstraints=false
        myView.backgroundColor = .green
        return myView
    }()
    
    let viewPink: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .purple
        myView.layer.shadowOffset = CGSize(width: 5, height: 5)
        myView.layer.shadowOpacity = 0.5
        return myView
    }()
    
    let viewYellow: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .yellow
        return myView
    }()
    
    let viewBrown: UIView = {
       let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .brown
        return myView
    }()
    
    let stackViewlvl1: UIStackView = {
        let myStackView = UIStackView()
         myStackView.translatesAutoresizingMaskIntoConstraints = false
        myStackView.alignment = .fill
        myStackView.axis = .vertical
        myStackView.backgroundColor = .orange
//        myStackView.spacing = CGFloat(16)
//        myStackView.
         return myStackView
    }()
    
    let labelInStackLvl1: UILabel = {
        let myLabel = UILabel()
         myLabel.translatesAutoresizingMaskIntoConstraints = false
         myLabel.backgroundColor = .brown
        myLabel.font = .italicSystemFont(ofSize: 30)
        myLabel.text = "This is text"
        myLabel.sizeToFit()
         return myLabel
    }()
    
    let labelInStackLvl2: UILabel = {
        let myLabel = UILabel()
         myLabel.translatesAutoresizingMaskIntoConstraints = false
         myLabel.backgroundColor = .brown
        myLabel.font = .italicSystemFont(ofSize: 30)
        myLabel.text = "This is text"
        myLabel.sizeToFit()
         return myLabel
    }()
    
    let labelInStackLvl3: UILabel = {
        let myLabel = UILabel()
         myLabel.translatesAutoresizingMaskIntoConstraints = false
         myLabel.backgroundColor = .brown
        myLabel.font = .italicSystemFont(ofSize: 30)
        myLabel.text = "This is text"
        myLabel.sizeToFit()
         return myLabel
    }()
    
    let labelInStackLvl4: UILabel = {
        let myLabel = UILabel()
         myLabel.translatesAutoresizingMaskIntoConstraints = false
         myLabel.backgroundColor = .brown
        myLabel.font = .italicSystemFont(ofSize: 30)
        myLabel.text = "This is text"
        myLabel.sizeToFit()
         return myLabel
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(viewContainner)
        viewContainner.addSubview(viewPink)
        viewPink.addSubview(viewYellow)
        viewYellow.addSubview(viewBrown)
        viewPink.addSubview(stackViewlvl1)
        setupLayout()
    }

    func setupLayout(){
        viewContainner.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewContainner.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewContainner.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        viewContainner.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        viewPink.topAnchor.constraint(equalTo: viewContainner.topAnchor, constant: 128).isActive = true
        viewPink.leftAnchor.constraint(equalTo: viewContainner.leftAnchor, constant: 80).isActive = true
        viewPink.rightAnchor.constraint(equalTo: viewContainner.rightAnchor, constant: -80).isActive = true
        viewPink.bottomAnchor.constraint(equalTo: viewContainner.bottomAnchor, constant: -80).isActive = true
        
        viewYellow.topAnchor.constraint(equalTo: viewPink.topAnchor, constant: 20).isActive = true
        viewYellow.leftAnchor.constraint(equalTo: viewPink.leftAnchor, constant: 20).isActive = true
        viewYellow.rightAnchor.constraint(equalTo: viewPink.rightAnchor, constant: -20).isActive = true
        viewYellow.heightAnchor.constraint(equalTo: viewPink.heightAnchor, multiplier: CGFloat(0.45)).isActive = true
        
        viewBrown.centerXAnchor.constraint(equalTo: viewYellow.centerXAnchor, constant: 0).isActive = true
        viewBrown.centerYAnchor.constraint(equalTo: viewYellow.centerYAnchor, constant: 0).isActive = true
        viewBrown.widthAnchor.constraint(equalTo: viewYellow.widthAnchor, multiplier: CGFloat(0.8)).isActive = true
        viewBrown.heightAnchor.constraint(equalTo: viewYellow.heightAnchor, multiplier: CGFloat(0.6)).isActive = true
        
        stackViewlvl1.centerXAnchor.constraint(equalTo: viewPink.centerXAnchor, constant: 0).isActive = true
        stackViewlvl1.topAnchor.constraint(equalTo: viewYellow.bottomAnchor, constant: 32).isActive = true
        stackViewlvl1.widthAnchor.constraint(equalTo: viewPink.widthAnchor, multiplier: CGFloat(0.9)).isActive = true
        stackViewlvl1.heightAnchor.constraint(equalTo: viewPink.heightAnchor, multiplier: CGFloat(0.4)).isActive = true
        addStackView()
    }
    
    func addStackView() {
        stackViewlvl1.addArrangedSubview(labelInStackLvl1)
        stackViewlvl1.addArrangedSubview(labelInStackLvl2)
        stackViewlvl1.addArrangedSubview(labelInStackLvl3)
        stackViewlvl1.addArrangedSubview(labelInStackLvl4)
    }

}

