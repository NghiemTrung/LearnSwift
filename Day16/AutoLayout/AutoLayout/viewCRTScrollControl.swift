//
//  viewCRTScrollControl.swift
//  AutoLayout
//
//  Created by Trung on 12/14/19.c
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class viewCRTScrollControl: UIViewController {

    let scrollLvl1View: UIScrollView = {
        let myScroll = UIScrollView()
        
        myScroll.translatesAutoresizingMaskIntoConstraints = false
        myScroll.backgroundColor = .brown
        
        return myScroll
    }()
    
    let viewContainer: UIView = {
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
    
    let txtFieldText1: UITextField = {
       let myTxtField = UITextField()
        
        myTxtField.translatesAutoresizingMaskIntoConstraints = false
        myTxtField.placeholder = "This is Text Field"
        myTxtField.font = .italicSystemFont(ofSize: 20)
        myTxtField.backgroundColor = .lightGray
        
        return myTxtField
    }()
    
    let txtFieldText2: UITextField = {
       let myTxtField = UITextField()
        
        myTxtField.translatesAutoresizingMaskIntoConstraints = false
        myTxtField.placeholder = "This is Text Field"
        myTxtField.font = .italicSystemFont(ofSize: 20)
        myTxtField.backgroundColor = .lightGray
        
        return myTxtField
    }()
    
    let txtFieldText3: UITextField = {
       let myTxtField = UITextField()
        
        myTxtField.translatesAutoresizingMaskIntoConstraints = false
        myTxtField.placeholder = "This is Text Field"
        myTxtField.font = .italicSystemFont(ofSize: 20)
        myTxtField.backgroundColor = .lightGray
        
        return myTxtField
    }()
    
    let txtFieldText4: UITextField = {
       let myTxtField = UITextField()
        
        myTxtField.translatesAutoresizingMaskIntoConstraints = false
        myTxtField.placeholder = "This is Text Field"
        myTxtField.font = .italicSystemFont(ofSize: 20)
        myTxtField.backgroundColor = .lightGray
        
        return myTxtField
    }()
    
    let btnNavigation: UIButton = {
       let myButton = UIButton()
        
        
        
        return myButton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        view.addSubview(scrollLvl1View)
        scrollLvl1View.addSubview(viewContainer)
        
        viewContainer.addSubview(txtFieldText1)
        viewContainer.addSubview(txtFieldText2)
        viewContainer.addSubview(txtFieldText3)
        viewContainer.addSubview(txtFieldText4)
        
        viewContainer.addSubview(btnNavigation)
        
        btnNavigation.addTarget(self, action: #selector(goTo), for: .touchUpInside)
        
        setupLayout()
    }
    
    @objc func goTo() {
        let secondVC = viewCtrlSecondView()
        let navigation = UINavigationController(rootViewController: secondVC)
        navigation.modalPresentationStyle = .fullScreen
        present(navigation, animated: true, completion: nil)
    }
    
    func setupLayout() {
        let scrollLvl1ViewConstraint = [
            scrollLvl1View.topAnchor.constraint(equalTo: view.topAnchor),
            scrollLvl1View.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollLvl1View.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollLvl1View.bottomAnchor.constraint(equalTo: viewContainer.bottomAnchor)
        ]
        NSLayoutConstraint.activate(scrollLvl1ViewConstraint)
        
        let viewContainerConstraint = [
            viewContainer.topAnchor.constraint(equalTo: scrollLvl1View.topAnchor, constant: 64),
            viewContainer.leftAnchor.constraint(equalTo: scrollLvl1View.leftAnchor, constant: 0),
            viewContainer.rightAnchor.constraint(equalTo: scrollLvl1View.rightAnchor,constant: 0),
            viewContainer.bottomAnchor.constraint(equalTo: scrollLvl1View.bottomAnchor, constant: -20)
        ]
        NSLayoutConstraint.activate(viewContainerConstraint)
        
        let txtField1Constaint = [
            txtFieldText1.topAnchor.constraint(equalTo: viewContainer.topAnchor, constant: 64),
            txtFieldText1.leftAnchor.constraint(equalTo: viewContainer.leftAnchor, constant: 8),
            txtFieldText1.rightAnchor.constraint(equalTo: viewContainer.rightAnchor,constant: 8),
            txtFieldText1.heightAnchor.constraint(equalToConstant: CGFloat(40))
        ]
        NSLayoutConstraint.activate(txtField1Constaint)
        
        let txtField2Constaint = [
            txtFieldText2.topAnchor.constraint(equalTo: txtFieldText1.bottomAnchor, constant: 300),
            txtFieldText2.leftAnchor.constraint(equalTo: viewContainer.leftAnchor, constant: 8),
            txtFieldText2.rightAnchor.constraint(equalTo: viewContainer.rightAnchor,constant: 8),
            txtFieldText2.heightAnchor.constraint(equalToConstant: CGFloat(40))
        ]
        NSLayoutConstraint.activate(txtField2Constaint)
        
        let txtField3Constaint = [
            txtFieldText3.topAnchor.constraint(equalTo: txtFieldText2.bottomAnchor, constant: 300),
            txtFieldText3.leftAnchor.constraint(equalTo: viewContainer.leftAnchor, constant: 8),
            txtFieldText3.rightAnchor.constraint(equalTo: viewContainer.rightAnchor,constant: 8),
            txtFieldText3.heightAnchor.constraint(equalToConstant: CGFloat(40))
        ]
        NSLayoutConstraint.activate(txtField3Constaint)
        
        
        let txtField4Constaint = [
            txtFieldText4.topAnchor.constraint(equalTo: txtFieldText3.bottomAnchor, constant: 300),
            txtFieldText4.leftAnchor.constraint(equalTo: viewContainer.leftAnchor, constant: 8),
            txtFieldText4.rightAnchor.constraint(equalTo: viewContainer.rightAnchor,constant: 8),
            txtFieldText4.heightAnchor.constraint(equalToConstant: CGFloat(40))
        ]
        NSLayoutConstraint.activate(txtField4Constaint)

    }
}
