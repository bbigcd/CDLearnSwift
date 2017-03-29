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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        initScrollView()
        // Do any additional setup after loading the view.
    }

    func initScrollView(){
        scrollView = UIScrollView.init(frame: self.view.bounds)
        scrollView.delegate = self as? UIScrollViewDelegate
        scrollView.contentSize = self.view.bounds.size
        scrollView.backgroundColor = UIColor.red
        view.addSubview(scrollView)
    }


}

extension BaseViewContrller : UIScrollViewDelegate{
    
}
