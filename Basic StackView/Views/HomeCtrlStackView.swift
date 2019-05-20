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
        heightAnchor.constraint(equalToConstant: 85).isActive = true
        
        let subViews = [#imageLiteral(resourceName: "icHome"), #imageLiteral(resourceName: "ring"), #imageLiteral(resourceName: "icMatch"), #imageLiteral(resourceName: "ring"), #imageLiteral(resourceName: "icProfile")].map { (img) -> UIView in
            
            let button = UIButton(type: .system)
            button.setImage(img.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
       
        
//        let BottomSubView = [UIColor.red, UIColor.yellow, UIColor.purple, UIColor.green, UIColor.darkGray].map { (color) -> UIView in
//
//            let v = UIView()
//            v.backgroundColor = color
//            return v
//
//        }
//
        subViews.forEach { (v) in
            addArrangedSubview(v)
        }
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
