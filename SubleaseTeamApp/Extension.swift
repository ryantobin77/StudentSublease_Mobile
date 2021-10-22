//
//  Extension.swift
//  Sublease
//
//  Created by mithil on 10/20/21.
//  Copyright © 2021 mithil. All rights reserved.
//
import UIKit

extension UIColor{
    public class var blueColor:UIColor{
         return UIColor(red:0.20, green:0.72, blue:0.82, alpha:1.0)
    }
    public class var darkBlueColor: UIColor{
        return UIColor(red:0.10, green:0.35, blue:0.40, alpha:1.0)
    }
    
}

extension UITextField{
    
    func underlined(borderColor: UIColor){
        self.borderStyle = UITextField.BorderStyle.none
        self.backgroundColor = UIColor.clear
        let width = 2.0
        
        let borderLine = UIView(frame: CGRect(x: 0, y: self.frame.height - CGFloat(width), width: self.frame.width, height: CGFloat(width)))
        borderLine.backgroundColor = borderColor
        self.addSubview(borderLine)
    }
    
}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

