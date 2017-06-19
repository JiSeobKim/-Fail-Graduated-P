//
//  PageShow.swift
//  Last
//
//  Created by 김지섭 on 2017. 6. 19..
//  Copyright © 2017년 JiseobKim. All rights reserved.
//
import Foundation
import UIKit
import BEMCheckBox
import RealmSwift
import Charts

class PageShow : UIViewController  {
    override func viewDidLoad() {
        
        
        updateChartWithData()
        barView.noDataText = "입력해 주세요"
        
//        axisFormatDelegate = self

        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ad.pageNumber = 0
        barView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
    }
    
    @IBOutlet weak var tfValue: UITextField!
    @IBOutlet weak var barView: BarChartView!
    
    @IBOutlet weak var pgvSubject: UIProgressView!
    
    
    
    @IBAction func bntRemoveAll(_ sender: Any) {
        let remover = VisitorCount()
        remover.delete()
        updateChartWithData()
    }
    
    
    @IBAction func btnAddTapped(_ sender: Any) {
        
        if let value = tfValue.text , value != "" {
            let visitorCount = VisitorCount()
            visitorCount.count = (NumberFormatter().number(from: value)?.intValue)!
            visitorCount.save()
            tfValue.text = ""
        }
        
        updateChartWithData()

    }
    
    func updateChartWithData() {
        var dataEntries: [BarChartDataEntry] = []
        let visitorCounts = getVisitorCountsFromDatabase()
        for i in 0..<visitorCounts.count {
            let dataEntry = BarChartDataEntry(x: Double(i), y: Double(visitorCounts[i].count))
            dataEntries.append(dataEntry)
        }
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "참석횟수")
        let chartData = BarChartData(dataSet: chartDataSet)
        barView.data = chartData
    }

    func getVisitorCountsFromDatabase() -> Results<VisitorCount> {
        do {
            let realm = try Realm()
            return realm.objects(VisitorCount.self)
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }
    }

    
    
    
    
}





