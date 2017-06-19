//
//  PageMembers.swift
//  Last
//
//  Created by 김지섭 on 2017. 6. 19..
//  Copyright © 2017년 JiseobKim. All rights reserved.
//

import Foundation
import UIKit

class PageMembers : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collectionMembers: UICollectionView!
    
    override func viewDidLoad() {
        collectionMembers.delegate = self
        collectionMembers.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 9
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MembersCell", for: indexPath)
        
        configureCell(cell: cell as! PageMembersCell, indexPath: indexPath as NSIndexPath)
        
        cell.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        // Shadow and Radius
        cell.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2)
        cell.layer.shadowOpacity = 1.0
        cell.layer.shadowRadius = 0.0
        cell.layer.masksToBounds = false
        cell.layer.cornerRadius = 4.0
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        let height = collectionView.frame.height
        return CGSize(width: (width/3) - 8, height: (height/5) - 8)
        // width & height are the same to make a square cell
    }
    
    func configureCell(cell: PageMembersCell, indexPath: NSIndexPath) {
        
        //update cell
        cell.addShadow()
    }
    
    
    
    
}
