//
//  UIKitViewController.swift
//  CDLearnSwift
//
//  Created by chendi on 17/3/28.
//  Copyright © 2017年 chendi. All rights reserved.
//

import UIKit

class UIKitViewController: UIViewController{
    var scrollView = UIScrollView()
    var headImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initScrollView()
        addUIToScrollView()
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }

    func initScrollView(){
        scrollView = UIScrollView.init(frame: view.bounds)
        scrollView.delegate = self as? UIScrollViewDelegate
        scrollView.contentSize = view.bounds.size
        view.addSubview(scrollView)
    }
    
    func addUIToScrollView(){
        let frame = CGRect.init(x: 0, y: 0, width: view.bounds.size.width, height: 125)
        headImageView = UIImageView.init(frame: frame)
        headImageView.image = UIImage.init(named: "header-contact")
        scrollView.addSubview(headImageView)
        
        let label1Frame = CGRect.init(x: 0, y: 135, width: view.bounds.size.width, height: 40)
        let label1 = UILabel.init(frame : label1Frame)
        label1.textAlignment = NSTextAlignment.center
        label1.text = "测试"
        scrollView.addSubview(label1)
    }

}

extension BaseViewContrller : UIScrollViewDelegate{
    
}
