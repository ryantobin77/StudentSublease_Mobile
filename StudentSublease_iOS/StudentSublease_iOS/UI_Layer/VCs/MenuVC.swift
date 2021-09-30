//
//  ViewController.swift
//  StudentSublease_iOS
//
//  Created by Ryan Tobin on 9/29/21.
//

import UIKit

class MenuVC: UIViewController {
    
    @IBOutlet var mainView: UIView!
    @IBOutlet var leadingConstraint: NSLayoutConstraint!
    @IBOutlet var trailingConstraint: NSLayoutConstraint!
    var menuButtonVisible = false
    
    @IBAction func menuButtonTapped(_ sender: Any) {
        if (!menuButtonVisible) {
            self.leadingConstraint.constant = 150
            //self.trailingConstraint.constant = -150
            self.menuButtonVisible = true
        } else {
            self.leadingConstraint.constant = 0
            //self.trailingConstraint.constant = 0s
            self.menuButtonVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

