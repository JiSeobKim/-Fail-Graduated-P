//
//  PageMembersCell.swift
//  Last
//
//  Created by 김지섭 on 2017. 6. 19..
//  Copyright © 2017년 JiseobKim. All rights reserved.
//

import Foundation
import UIKit

class PageMembersCell : UICollectionViewCell {
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    func addShadow() {
        personImage.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        personImage.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        personImage.layer.shadowOffset = CGSize(width: 0, height: 2)
        personImage.layer.shadowOpacity = 1.0
        personImage.layer.shadowRadius = 0.0
        personImage.layer.masksToBounds = false
        personImage.layer.cornerRadius = 4.0
        
        
        
    }
    
}
