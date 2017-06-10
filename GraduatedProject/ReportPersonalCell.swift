//
//  AddReportCell.swift
//  GraduatedProject
//
//  Created by 김지섭 on 2017. 6. 8..
//  Copyright © 2017년 JiseobKim. All rights reserved.
//

import Foundation
import UIKit
import BEMCheckBox
class ReportPersonalCell : UITableViewCell, BEMCheckBoxDelegate {
    
    
    @IBOutlet weak var bntReducePersonalDues: BEMCheckBox!
    @IBOutlet weak var bntAttended: BEMCheckBox!
    @IBOutlet weak var bntSucceded: BEMCheckBox!
    

}
