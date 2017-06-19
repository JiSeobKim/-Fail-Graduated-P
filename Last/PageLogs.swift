//
//  PageLogs.swift
//  Last
//
//  Created by 김지섭 on 2017. 6. 19..
//  Copyright © 2017년 JiseobKim. All rights reserved.
//

import Foundation
import UIKit

class PageLogs : UIViewController, UITableViewDataSource, UITableViewDelegate {
    override func viewDidLoad() {
        
    }
    override func viewWillAppear(_ animated: Bool) {
        ad.pageNumber = 2
    }
    
    
    
    let itemDate = ["17/2/10", "17/3/15",
                    "17/3/23", "17/4/26", "17/5/18" ]
    
    let itemLogs = ["기본 구상", "컬렉션뷰 추가",
                    "멤버 페이지 추가", "디테일 뷰 추가", "차트 추가"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "logCell", for: indexPath) as! PageLogsCell
        
        cell.lbDate.text = self.itemDate[indexPath.row]
        cell.lbLogs.text = self.itemLogs[indexPath.row]
        
        
        
        return cell
    }
    
    
}
