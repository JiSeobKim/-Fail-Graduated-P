//
//  ViewController.swift
//  GraduatedProject
//
//  Created by 김지섭 on 2017. 5. 16..
//  Copyright © 2017년 JiseobKim. All rights reserved.
//

import UIKit

class PageVC: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        
        //첫 화면은 VC1
        if let firstVC = VCArr.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }
    
    
    
    //Add 버튼 VC 연결
    @IBAction func Add(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "정보 추가", message: "추가 할 정보를 선택해 주세요", preferredStyle: .actionSheet)
        
        let addReport = UIAlertAction(title: "보고서 작성", style: .default) {
            (_) in
            if let goReport = self.storyboard?.instantiateViewController(withIdentifier: "AddReport") {
                self.navigationController?.pushViewController(goReport, animated: true)
            }
        }
        
        let addMember = UIAlertAction(title: "구성원 추가", style: .default) {
            (_) in
            if let goMember = self.storyboard?.instantiateViewController(withIdentifier: "AddMember") {
                self.navigationController?.pushViewController(goMember, animated: true)
            }
        }
        
        let addPart = UIAlertAction(title: "파트 추가", style: .default) {
            (_) in
            if let goPart = self.storyboard?.instantiateViewController(withIdentifier: "AddPart") {
                self.navigationController?.pushViewController(goPart, animated: true)
            }
        }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        
        alert.addAction(addReport)
        alert.addAction(addMember)
        alert.addAction(addPart)
        alert.addAction(cancel)
        
        self.present(alert, animated:true)
        
        //캔슬 추가차례
    }
    
    
    
    
///////////PageView 관련
    
    //VC 배열
    lazy var VCArr: [ UIViewController] = {
        return [self.VCInstance(name: "VC1"), self.VCInstance(name: "VC2")]
    }()
    
    //Main이라는 스토리보드에서 정보 받아오기
    private func VCInstance(name:String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }
    
    //naviTitle
    func naviTitle() {
        let title = ["최근 현황","상세 진행","Log"]
        
        self.navigationItem.title = title[ad.pageNumber]
        
        
    }
    
    // 이전화면 스와이프
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = VCArr.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            naviTitle()
            return VCArr.last
        }
        guard VCArr.count > previousIndex else {
            return nil
        }
        
        naviTitle()
        return VCArr[previousIndex]
    }
    
    //다음화면 스와이프
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = VCArr.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < VCArr.count else {
            naviTitle()
            return VCArr.first
        }
        guard VCArr.count > nextIndex else {
            return nil
        }
        
        naviTitle()
        return VCArr[nextIndex]
    }
    
    
    
    //페이지 카운트
    public func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return VCArr.count
        
    }
    
    //인덱스
    public func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = VCArr.index(of: firstViewController) else{
                return 0
        }
        return firstViewControllerIndex
    }
    
    
    //페이지뷰 하단의 경계 제거
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        for view in self.view.subviews {
            if view is UIScrollView {
                if view is UIScrollView {
                    view.frame = UIScreen.main.bounds
                } else if view is UIPageControl {
                    view.backgroundColor = UIColor.clear
                }
            }
        }
    }

    
    
    
    
}
