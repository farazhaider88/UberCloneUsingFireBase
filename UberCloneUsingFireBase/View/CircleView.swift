
//
//  CircleView.swift
//  UberCloneUsingFireBase
//
//  Created by Faraz Haider on 06/04/2019.
//  Copyright © 2019 Faraz Haider. All rights reserved.
//

import UIKit

class CircleView: UIView {

    override func awakeFromNib() {
        setupView()
    }
    
    
    @IBInspectable var borderColor: UIColor?{
        didSet{
            setupView()
        }
    }
    
    func setupView(){
        self.layer.cornerRadius = self.frame.width/2
        self.layer.borderWidth = 1.5
        self.layer.borderColor = borderColor?.cgColor
    }

}
