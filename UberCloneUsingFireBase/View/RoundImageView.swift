//
//  RoundImageView.swift
//  UberCloneUsingFireBase
//
//  Created by Faraz Haider on 06/04/2019.
//  Copyright © 2019 Faraz Haider. All rights reserved.
//

import UIKit

class RoundImageView: UIImageView {

    override func awakeFromNib() {
        setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
    }

}
