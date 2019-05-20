//
//  ViewController.swift
//  Basic StackView
//
//  Created by Apple on 5/20/19.
//  Copyright © 2019 Monkey iDesign. All rights reserved.
//  Samreaksa Ros
//  https://www.monkeyidesign.com
//  email: sam@monkeyidesign.com
//  tel: +85592 200069

import UIKit

class ViewController: UIViewController {
    
    let topStackView = TopNavigationStackView()
    let contentStackView = UIView()
    
    
    //let BottomStackView = UIView()
    
    let BottomStackView = HomeCtrlStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //cmd + cntro + e for rename
        
//        let topSubviews = [UIColor.gray, UIColor.darkGray, UIColor.blue].map { (color) -> UIView in
//
//            let v = UIView()
//            v.backgroundColor = color
//            return v
//
//        }
        
        //let yellowView = UIView()
        //let topStackView = UIStackView(arrangedSubviews: topSubviews)
     
        contentStackView.backgroundColor = .green
        
        let StackViewLayout = UIStackView(arrangedSubviews: [topStackView, contentStackView, BottomStackView])
        //stackView.distribution = .fillEqually
        StackViewLayout.axis = .vertical
        view.addSubview(StackViewLayout)
        StackViewLayout.anchor(top: view.safeAreaLayoutGuide.topAnchor , leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        
        /*First Method
        
         //Enables auto layout for us
        contentStackView.frame = .init(x: 0, y: 0, width: 300, height: 250)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
         */
        
        //Second Method
        StackViewLayout.fillSuperview()
    }
 


}

