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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        let stackView = UIStackView(arrangedSubviews: [redView, blueView])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        view.addSubview(stackView)
        stackView.frame = .init(x: 0, y: 0, width: 320, height: 250)
        
        //Enables auto layout for us
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
    }


}

