//
//  AddReport.swift
//  GraduatedProject
//
//  Created by 김지섭 on 2017. 6. 1..
//  Copyright © 2017년 JiseobKim. All rights reserved.
//

import Foundation
import UIKit

class AddReport : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    override func viewDidLoad() {
    
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
        
    }
    
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
   
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : UITableViewCell?
        if indexPath.row == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "ReportGruopCell", for: indexPath)
            
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "ReportPersonalCell", for: indexPath)
        }
        return cell!

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 200
        } else {
            return 140
        }
    }
    
    
    
    
    
    
    
}
