//
//  textField.swift
//  run
//
//  Created by Yeo Chun Sheng Joel on 18/2/19.
//  Copyright © 2019 Yeo Chun Sheng Joel. All rights reserved.
//

import UIKit

extension UITextField {
    
    func underlined(){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.black.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
