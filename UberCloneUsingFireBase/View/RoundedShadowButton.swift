//
//  RoundedShadowButton.swift
//  UberCloneUsingFireBase
//
//  Created by Faraz Haider on 06/04/2019.
//  Copyright © 2019 Faraz Haider. All rights reserved.
//

import UIKit

class RoundedShadowButton: UIButton {
    
    var orignalSize:CGRect?
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView(){
        orignalSize = self.frame
        self.layer.cornerRadius = 5.0
        self.layer.shadowRadius = 10.0
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize.zero
    }

    func animateButton(shouldLoad:Bool, withMessage message:String?){
       
        let spinner = UIActivityIndicatorView()
        spinner.style = .whiteLarge
        spinner.color = .darkGray
        spinner.alpha = 0
        spinner.hidesWhenStopped = true
        spinner.tag = 1000
        
        if shouldLoad{
            self.addSubview(spinner)

            self.setTitle("", for: .normal)
            UIView.animate(withDuration: 0.2, animations: {
                self.layer.cornerRadius = self.frame.height/2
                self.frame = CGRect(x: self.frame.midX - (self.frame.height/2), y: self.frame.origin.y, width: self.frame.height, height: self.frame.height)
            }) { (finished) in
                if finished {
                                spinner.startAnimating()
                    spinner.center = CGPoint(x: self.frame.width/2 + 1, y: self.frame.width/2 + 1)
                    UIView.animate(withDuration: 0.2, animations: {
                        spinner.alpha = 1.0
                    })
                }
            }
            self.isUserInteractionEnabled = false
        }else{
            self.isUserInteractionEnabled = true
            
            for subView in self.subviews{
                if subView.tag == 1000{
                    subView.removeFromSuperview()
                }
            }
            
            UIView.animate(withDuration: 0.2) {
                self.layer.cornerRadius = 5.0
                self.frame = self.orignalSize!
                self.setTitle(message, for: .normal)
            }
        }
    }
}
