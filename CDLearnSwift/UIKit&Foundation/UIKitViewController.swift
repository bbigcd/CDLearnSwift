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
    var textArr = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textArr = ["About Us",
                   "Good as Old Phones returns the phones of  yesteryear back to their original glory and then gets them into the hands* of those who appreciate them most:",
                   "Whether you are looking for a turn-of-the-century wall set or a Zack Morris Special, we've got you covered. Give us a ring, and we will get you connected. ",
                   "*Hands-free phones available"]
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
        
        let label1Frame = CGRect.init(x: 0, y: 145, width: view.bounds.size.width, height: 40)
        let label1 = createdLabel(label1Frame, 28, "Damascus", NSTextAlignment.center, textArr[0] as! String)
        scrollView.addSubview(label1!)
        
        
        let label2Frame = CGRect.init(x: 50, y: 165, width: view.bounds.size.width - 100, height: 125)
        let label2 = createdLabel(label2Frame, 17, "system", NSTextAlignment.left, textArr[1] as! String)
        scrollView.addSubview(label2!)
        
        
        let label3Frame = CGRect.init(x: 50, y: 265, width: view.bounds.size.width - 100, height: 125)
        let label3 = createdLabel(label3Frame, 17, "system", NSTextAlignment.left, textArr[2] as! String)
        scrollView.addSubview(label3!)
        
        let label4Frame = CGRect.init(x: 50, y: 335, width: view.bounds.size.width - 100, height: 125)
        let label4 = createdLabel(label4Frame, 17, "system", NSTextAlignment.left, textArr[3] as! String)
        scrollView.addSubview(label4!)
        
    }
    
    func createdLabel(_ frame:CGRect,
                      _ fontSize:CGFloat,
                      _ fontName:String,
                      _ textAlignment:NSTextAlignment,
                      _ text:String) -> UILabel?{
        let label = UILabel.init(frame: frame)
        label.numberOfLines = 0
        label.font = UIFont.init(name: fontName, size: fontSize)
        label.text = text
        label.textAlignment = textAlignment
        return label;
    }
    

}

extension BaseViewContrller : UIScrollViewDelegate{
    
}
