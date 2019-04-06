//
//  ViewController.swift
//  UberCloneUsingFireBase
//
//  Created by Faraz Haider on 05/04/2019.
//  Copyright © 2019 Faraz Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var requestRideButton: RoundedShadowButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func requestRideButtonClicked(_ sender: Any) {
        requestRideButton.animateButton(shouldLoad: true, withMessage: nil)
    }
    
}

