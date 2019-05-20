//
//  HomeCtrlStackView.swift
//  Basic StackView
//
//  Created by Apple on 5/20/19.
//  Copyright © 2019 Monkey iDesign. All rights reserved.
//

import UIKit

class HomeCtrlStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
         distribution = .fillEqually
        //BottomStackView.backgroundColor = .blue
        heightAnchor.constraint(equalToConstant: 120).isActive = true

        
        let BottomSubView = [UIColor.red, UIColor.yellow, UIColor.purple, UIColor.green, UIColor.darkGray].map { (color) -> UIView in
            
            let v = UIView()
            v.backgroundColor = color
            return v
            
        }
        
        BottomSubView.forEach { (v) in
            addArrangedSubview(v)
        }
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
