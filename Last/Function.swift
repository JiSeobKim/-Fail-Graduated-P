//
//  Function.swift
//  Last
//
//  Created by 김지섭 on 2017. 6. 19..
//  Copyright © 2017년 JiseobKim. All rights reserved.
//

import Foundation
import UIKit
let ad = UIApplication.shared.delegate as! AppDelegate


private var labelShadow = false
extension UILabel {
    
    @IBInspectable var labelShadowDesign : Bool {
        get{
            return labelShadow
        }
        
        set{
            labelShadow = newValue
            if labelShadow {
                
                self.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
                self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
                self.layer.shadowOffset = CGSize(width: 0, height: 2)
                self.layer.shadowOpacity = 1.0
                self.layer.shadowRadius = 0.0
                self.layer.masksToBounds = false
                self.layer.cornerRadius = 4.0

                
            }
        }
    }
}
